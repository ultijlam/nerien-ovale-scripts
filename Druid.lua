NerienOvaleScripts.script["DRUID"] =
[[
# Nerien's Druid Ovale script based on SimulationCraft.
#
# Feral:
#	talents=http://www.wowhead.com/talent#druid-000000000000000000002320322312011021222301020301000000000000000
#	glyphs=rip/bloodletting/berserk
#
#	- Berserk should be macroed into Tiger's Fury.

# Buffs
Define(CLEARCASTING 16870)
SpellList(PRIMARYSTATBUFF 79061 79063) # Blessing of Kings/Mark of the Wild
Define(STAMPEDE 81022)
Define(STRENGTHOFTHEPANTHER 90166) # feral 4pT11 bonus

# Debuffs
Define(FAERIEFIREDEBUFF 91565) # stacks 3 times

# Glyphs
Define(GLYPHOFBERSERK 62969)
Define(GLYPHOFBLOODLETTING 54815)
Define(GLYPHOFFRENZIEDREGENERATION 54810)

# Talents
Define(BLOODINTHEWATERTALENT 8341)

# Spells
Define(BARKSKIN 22812)
	SpellInfo(BARKSKIN cd=60)
	SpellAddBuff(BARKSKIN BARKSKIN=12)
Define(BASH 5211)
	SpellInfo(BASH mana=10)
	SpellAddTargetDebuff(BASH BASH=4)
Define(BERSERK 50334)
	SpellInfo(BERSERK cd=180)
Define(CLAW 16827)
	SpellInfo(CLAW combo=1 mana=40)
Define(DEMORALIZINGROAR 99)
	SpellInfo(DEMORALIZINGROAR mana=10)
	SpellAddTargetDebuff(DEMORALIZINGROAR DEMORALIZINGROAR=30)
Define(ENRAGE 5229)
	SpellInfo(ENRAGE cd=60)
Define(FAERIEFIRE 770)
	SpellAddTargetDebuff(FAERIEFIRE FAERIEFIREDEBUFF=300)
Define(FAERIEFIREFERAL 16857)
	SpellAddTargetDebuff(FAERIEFIREFERAL FAERIEFIREDEBUFF=300)
Define(FERALCHARGECAT 49376)
Define(FEROCIOUSBITE 22568)
	SpellInfo(FEROCIOUSBITE combo=-5 mana=25)
Define(FRENZIEDREGENERATION 22842)
	SpellInfo(FRENZIEDREGENERATION cd=180)
	SpellAddBuff(FRENZIEDREGENERATION FRENZIEDREGENERATION=20)
Define(INNERVATE 29166)
	SpellInfo(INNERVATE cd=180)
	SpellAddBuff(INNERVATE INNERVATE=10)
Define(LACERATE 33745)
	SpellInfo(LACERATE mana=15)
	SpellAddTargetDebuff(LACERATE LACERATE=15)
Define(MAIM 22570)
	SpellInfo(MAIM combo=-5 mana=35)
Define(MANGLECAT 33876)
	SpellInfo(MANGLECAT combo=1 mana=35 inccounter=ripshreds)
	SpellAddTargetDebuff(MANGLECAT MANGLECAT=60)
Define(MANGLEBEAR 33878)
	SpellInfo(MANGLEBEAR cd=6 mana=15 buffnocd=BERSERK)
	SpellAddTargetDebuff(MANGLEBEAR MANGLEBEAR=60)
Define(MARKOFTHEWILD 1126)
Define(MAUL 6807)
	SpellInfo(MAUL cd=3 mana=30)
Define(PULVERIZE 80313)
	SpellInfo(PULVERIZE mana=15)
	SpellAddTargetDebuff(PULVERIZE LACERATE=0)
Define(RAKE 1822)
	SpellInfo(RAKE combo=1 mana=35)
	SpellAddTargetDebuff(RAKE RAKE=9)
Define(RAVAGE 6785)
	SpellInfo(RAVAGE combo=1 mana=60)
Define(RAVAGEBANG 81170)
   SpellInfo(RAVAGEBANG combo=1 mana=0)
   SpellAddBuff(RAVAGEBANG STAMPEDE=0)
Define(RIP 1079)
	SpellInfo(RIP combo=-5 duration=16 mana=30 resetcounter=ripshreds)
	SpellInfo(RIP glyph=GLYPHOFBLOODLETTING addduration=6)
	SpellAddTargetDebuff(RIP RIP=16)
Define(SAVAGEROAR 52610)
	SpellInfo(SAVAGEROAR combo=-5 mana=25)
	SpellAddBuff(SAVAGEROAR SAVAGEROAR=9)
Define(SHRED 5221)
	SpellInfo(SHRED mana=40 combo=1 inccounter=ripshreds)
Define(SKULLBASHBEAR 80964)
	SpellInfo(SKULLBASHBEAR mana=15)
Define(SKULLBASHCAT 80965)
	SpellInfo(SKULLBASHBEAR mana=25)
Define(SURVIVALINSTINCTS 61336)
	SpellInfo(SURVIVALINSTINCTS cd=180)
	SpellAddBuff(SURVIVALINSTINCTS SURVIVALINSTINCTS=12)
Define(SWIPEBEAR 779)
	SpellInfo(SWIPEBEAR cd=6 mana=15)
Define(SWIPECAT 62078)
	SpellInfo(SWIPECAT mana=45)
Define(THRASH 77758)
	SpellInfo(THRASH cd=6 mana=25)
	SpellAddTargetDebuff(THRASH THRASH=6)
Define(TIGERSFURY 5217)
	SpellInfo(TIGERSFURY cd=30)
	SpellAddBuff(TIGERSFURY TIGERSFURY=6)
Define(WILDMUSHROOM 88747)
Define(WILDMUSHROOMDETONATE 88751)

# Racials & Professions
Define(BERSERKING 26297) # troll
	SpellInfo(BERSERKING duration=10 cd=180)
	SpellAddBuff(BERSERKING BERSERKING=10)
Define(LIFEBLOOD 55503) # herbalism
	SpellInfo(LIFEBLOOD duration=20 cd=120)

# Items
Define(POTIONOFTHETOLVIR 58145)
	Define(POTIONOFTHETOLVIRSPELL 80495)

AddCheckBox(faeriefire SpellName(FAERIEFIRE) default)
AddCheckBox(mangle SpellName(MANGLECAT) default mastery=2)
AddCheckBox(demo SpellName(DEMORALIZINGROAR) default mastery=2)
AddCheckBox(shred SpellName(SHRED) default mastery=2)
AddCheckBox(fb "Aggressive FB" default mastery=2)

# Cat DPS rotation from Leafkiller's 4.3 Feral Ovale Script:
#    http://fluiddruid.net/forum/viewtopic.php?f=3&t=620
AddCheckBox(leafkiller "Leafkiller's Cat DPS Rotation" mastery=2)

# Trinket CDs
AddListItem(trinketcd0 000s "Trinket 0 CD - none" default)
AddListItem(trinketcd0 060s "Trinket 0 CD - 1 min")
AddListItem(trinketcd0 090s "Trinket 0 CD - 1 min 30s")
AddListItem(trinketcd0 120s "Trinket 0 CD - 2 min")
AddListItem(trinketcd1 000s "Trinket 1 CD - none" default)
AddListItem(trinketcd1 060s "Trinket 1 CD - 1 min")
AddListItem(trinketcd1 090s "Trinket 1 CD - 1 min 30s")
AddListItem(trinketcd1 120s "Trinket 1 CD - 2 min")

AddFunction UseItemActions
{
	Item(HandsSlot usable=1)
	unless List(trinketcd0 000s) Item(Trinket0Slot usable=1)
	unless List(trinketcd1 000s) Item(Trinket1Slot usable=1)
}

AddFunction UseProfessionActions
{
	Spell(LIFEBLOOD)
}

AddFunction UseRacialActions
{
	Spell(BERSERKING)
}

###
### Feral
###

### Feral Bear
AddFunction MainRotationBear
{
	if InCombat(no) and BuffExpires(PRIMARYSTATBUFF 400) Spell(MARKOFTHEWILD)

	#/faerie_fire_feral,if=!debuff.faerie_fire.up
	if CheckBoxOn(faeriefire) and TargetDebuffExpires(lowerarmor 0 mine=0)
		unless TargetDebuffPresent(FAERIEFIREDEBUFF 3 mine=1 stacks=3) Spell(FAERIEFIREFERAL)
	#/mangle_bear
	Spell(MANGLEBEAR)
	#/demoralizing_roar,if=!debuff.demoralizing_roar.up
	if CheckBoxOn(demo) and TargetDebuffExpires(lowerphysicaldamage 4) Spell(DEMORALIZINGROAR)
	#/lacerate,if=!ticking
	unless TargetDebuffPresent(LACERATE mine=1) Spell(LACERATE)
	#/thrash
	Spell(THRASH)
	#/pulverize,if=buff.lacerate.stack=3&buff.pulverize.remains<=2
	if TargetDebuffPresent(LACERATE mine=1 stacks=3) and BuffExpires(PULVERIZE 2) Spell(PULVERIZE)
	#/lacerate,if=buff.lacerate.stack<3
	unless TargetDebuffPresent(LACERATE mine=1 stacks=3) Spell(LACERATE)
	#/faerie_fire_feral
	Spell(FAERIEFIREFERAL)
	# Filler attack
	Spell(LACERATE)
}

AddFunction CooldownsBear
{
	if TargetIsInterruptible()
	{
		if TargetInRange(SKULLBASHBEAR) Spell(SKULLBASHBEAR)
		unless TargetClassification(worldboss) if TargetInRange(BASH) Spell(BASH)
	}
}

### Feral Cat
AddFunction AddComboPoint
{
	if CheckBoxOn(shred) Spell(SHRED)
	if CheckBoxOff(shred) Spell(MANGLECAT)
}

AddFunction ExecuteRange
{
	{ArmorSetParts(T13 more 1) and TargetLifePercent(less 60)} or TargetLifePercent(less 25)
}

AddFunction MainRotationCat
{
	if InCombat(no) and BuffExpires(PRIMARYSTATBUFF 400) Spell(MARKOFTHEWILD)

	#/tigers_fury,if=energy<=45&(!buff.omen_of_clarity.react)
	unless BuffPresent(CLEARCASTING)
	{
		if ArmorSetParts(T13 more 3) and Mana(less 46) Spell(TIGERSFURY)
		if ArmorSetParts(T13 less 4) and Mana(less 36) Spell(TIGERSFURY)
	}
	unless TargetInRange(MANGLECAT)
	{
		if CheckBoxOn(faeriefire) and TargetDebuffExpires(lowerarmor mine=0) and TargetDeadIn(more 15)
			unless TargetDebuffPresent(FAERIEFIREDEBUFF 3 mine=1 stacks=3) Spell(FAERIEFIREFERAL)
		Texture(ability_druid_catformattack)
	}
	#/mangle_cat,if=set_bonus.tier11_4pc_melee&buff.t11_4pc_melee.remains<4
	if ArmorSetParts(T11 more 3) and BuffExpires(STRENGTHOFTHEPANTHER 4) Spell(MANGLECAT)
	#/faerie_fire_feral,if=debuff.faerie_fire.stack<3|!(debuff.sunder_armor.up|debuff.expose_armor.up)
	if CheckBoxOn(faeriefire) and TargetDebuffExpires(lowerarmor mine=0) and TargetDeadIn(more 15)
		unless TargetDebuffPresent(FAERIEFIREDEBUFF 3 mine=1 stacks=3) Spell(FAERIEFIREFERAL)
	#/mangle_cat,if=debuff.mangle.remains<=2&(!debuff.mangle.up|debuff.mangle.remains>=0.0)
	unless TargetDebuffPresent(bleed) Spell(MANGLECAT)
	if CheckBoxOn(mangle) and TargetDebuffExpires(bleed 2) Spell(MANGLECAT)
	#/ravage,if=(buff.stampede_cat.up|buff.t13_4pc_melee.up)&(buff.stampede_cat.remains<=1|buff.t13_4pc_melee.remains<=1)
	#	[Leafkiller] increase window for consuming Stampede buff with Ravage! by 2s
	if BuffPresent(STAMPEDE) and BuffExpires(STAMPEDE 3) Spell(RAVAGEBANG)
	if TalentPoints(BLOODINTHEWATERTALENT more 1) and ExecuteRange()
	{
		if TargetDebuffPresent(RIP mine=1)
		{
			#/ferocious_bite,if=buff.combo_points.stack>=1&dot.rip.ticking&dot.rip.remains<=2.1&target.health_pct<=60
			#	[Leafkiller] use 2.9s window to refresh Rip with FB (BiTW) due to game lag.
			if ComboPoints(more 0) and TargetDebuffExpires(RIP 2.9 mine=1) Spell(FEROCIOUSBITE)
			#/ferocious_bite,if=buff.combo_points.stack>=5&dot.rip.ticking&target.health_pct<=60
			if ComboPoints(more 4) Spell(FEROCIOUSBITE)
		}
	}
	#/shred,extend_rip=1,if=position_back&dot.rip.ticking&dot.rip.remains<=4
	#/mangle_cat,extend_rip=1,if=position_front&dot.rip.ticking&dot.rip.remains<=4&target.health_pct>60
	unless TalentPoints(BLOODINTHEWATERTALENT more 1) and ExecuteRange()
	{
		if Glyph(GLYPHOFBLOODLETTING) and Counter(ripshreds less 3) and TargetDebuffPresent(RIP mine=1) and TargetDebuffExpires(RIP 4 mine=1)
			AddComboPoint()
	}
	#/rip,if=buff.combo_points.stack>=5&target.time_to_die>=6&dot.rip.remains<2.0&\
	#	(buff.berserk.up|dot.rip.remains<=cooldown.tigers_fury.remains)
	if ComboPoints(more 4) and TargetDeadIn(more 6) and TargetDebuffExpires(RIP 2 mine=1)
	{
		if BuffPresent(BERSERK) Spell(RIP)
		# [Leafkiller] increase window for waiting on Tiger's Fury to reapply Rip by 1.9s
		if {target.debuffExpires(RIP mine=1) + 1.9 < spell(TIGERSFURY)} Spell(RIP)
	}
	#/ferocious_bite,if=buff.combo_points.stack>=5&dot.rip.remains>5.0&buff.savage_roar.remains>=3.0&buff.berserk.up
	if ComboPoints(more 4) and TargetDebuffPresent(RIP 5 mine=1) and BuffPresent(SAVAGEROAR 3) and BuffPresent(BERSERK) Spell(FEROCIOUSBITE)
	#/rake,if=target.time_to_die>=8.5&buff.tigers_fury.up&dot.rake.remains<9.0&(!dot.rake.ticking|dot.rake.multiplier<multiplier)
	if TargetDeadIn(more 8.5) and BuffPresent(TIGERSFURY) and TargetDebuffExpires(RAKE 9 mine=1) Spell(RAKE)
	#/rake,if=target.time_to_die>=dot.rake.remains&dot.rake.remains<3.0&\
	#	(buff.berserk.up|energy>=71|(cooldown.tigers_fury.remains+0.8)>=dot.rake.remains)
	#	[Leafkiller] only refresh Rake if the target will live long enough for almost all ticks to complete,
	#		and don't delay Rake to wait on Tiger's Fury to come off of cooldown
	if TargetDeadIn(more 8.4) and TargetDebuffExpires(RAKE 2.9 mine=1)
	{
		if BuffPresent(BERSERK) or Mana(more 70) Spell(RAKE)
		if {spell(TIGERSFURY) + 0.1 > target.debuffExpires(RAKE mine=1)} Spell(RAKE)
	}
	#/shred,if=position_back&buff.omen_of_clarity.react
	#/mangle_cat,if=position_front&buff.omen_of_clarity.react
	if BuffPresent(CLEARCASTING) AddComboPoint()
	#/savage_roar,if=buff.combo_points.stack>=1&buff.savage_roar.remains<=1
	#	[Leafkiller] increase window for refreshing Savage Roar by 1s
	if ComboPoints(more 0) and BuffExpires(SAVAGEROAR 2) Spell(SAVAGEROAR)
	if CheckBoxOn(leafkiller)
	{
		# SR/Rip desync code
		if ComboPoints(more 4) and TargetDeadIn(more 8.9) and TargetDebuffExpires(RIP 12 mine=1)
		{
			if less than 6s between BuffExpires(SAVAGEROAR) and TargetDebuffExpires(RIP mine=1) Spell(SAVAGEROAR)
			if BuffExpires(SAVAGEROAR 6) Spell(SAVAGEROAR)
        }
	}
	#/ravage,if=(buff.stampede_cat.up|buff.t13_4pc_melee.up)&cooldown.tigers_fury.remains=0
	if BuffPresent(STAMPEDE) and 1s before Spell(TIGERSFURY) Spell(RAVAGEBANG)
	#/ferocious_bite,if=(target.time_to_die<=4&buff.combo_points.stack>=5)|target.time_to_die<=1
	#	[Leafkiller] burn combo points on FB if the target is about to die - on a boss fight this is
	#		redundant with BitW phase.
	if TargetDeadIn(less 7) and ComboPoints(more 4) Spell(FEROCIOUSBITE)
	if CheckBoxOn(fb) and ComboPoints(more 4)
	{
		unless Level(more 80)
		{
			#/ferocious_bite,if=buff.combo_points.stack>=5&dot.rip.remains>=8.0&buff.savage_roar.remains>=4.0
			if TargetDebuffPresent(RIP 8 mine=1) and BuffPresent(SAVAGEROAR 4) Spell(FEROCIOUSBITE)
		}
		if Level(more 80)
		{
			#/ferocious_bite,if=buff.combo_points.stack>=5&dot.rip.remains>=14.0&buff.savage_roar.remains>=10.0
			if TargetDebuffPresent(RIP 14 mine=1) and BuffPresent(SAVAGEROAR 10) Spell(FEROCIOUSBITE)
		}
	}
	#/ravage,if=(buff.stampede_cat.up|buff.t13_4pc_melee.up)&!buff.omen_of_clarity.react&buff.tigers_fury.up&time_to_max_energy>1.0
	#	[Leafkiller] these Stampede procs are from using Tiger's Fury, so we don't need to check that TF is up.
	if BuffPresent(STAMPEDE) and BuffExpires(CLEARCASTING)
		unless 1s before Mana(more 99) Spell(RAVAGEBANG)
	#/mangle_cat,if=set_bonus.tier11_4pc_melee&buff.t11_4pc_melee.stack<3
	if ArmorSetParts(T11 more 3)
		unless BuffPresent(STRENGTHOFTHEPANTHER stacks=3) Spell(MANGLECAT)
}

AddFunction CooldownsCat
{
	if InCombat(no)
	{
		#/tolvir_potion,if=!in_combat
		if CheckBoxOn(potions) and TargetClassification(worldboss) Item(POTIONOFTHETOLVIR)
	}
	#/skull_bash_cat
	if TargetIsInterruptible()
	{
		if TargetInRange(SKULLBASHCAT) Spell(SKULLBASHCAT)
		unless TargetClassification(worldboss) if ComboPoints(more 0) and TargetInRange(MAIM) Spell(MAIM)
	}
	#/tolvir_potion,if=buff.bloodlust.react|target.time_to_die<=40
	if CheckBoxOn(potions) and TargetClassification(worldboss) and {BuffPresent(heroism) or TargetDeadIn(less 40)} Item(POTIONOFTHETOLVIR)
	unless BuffPresent(CLEARCASTING)
	{
		#/berserk,if=buff.tigers_fury.up|(target.time_to_die<25&cooldown.tigers_fury.remains>6)
		if BuffPresent(TIGERSFURY) or 1s before Spell(TIGERSFURY)
		{
			if ArmorSetParts(T13 more 3) and Mana(less 46) Spell(BERSERK)
			if ArmorSetParts(T13 less 4) and Mana(less 36) Spell(BERSERK)
		}
		unless 6s before Spell(TIGERSFURY)
		{
			if TargetClassification(worldboss)
				if {Glyph(GLYPHOFBERSERK) and TargetDeadIn(less 25)} or TargetDeadIn(less 15) Spell(BERSERK)
		}
	}
	unless {ArmorSetParts(T11 more 3) and BuffExpires(STRENGTHOFTHEPANTHER 4)}
		or {CheckBoxOn(faeriefire) and TargetDebuffExpires(lowerarmor mine=0) and TargetDeadIn(more 15)
			and TargetDebuffExpires(FAERIEFIREDEBUFF 3 mine=1 stacks=3) and 1s before Spell(FAERIEFIREFERAL)}
		or TargetDebuffExpires(bleed)
		or {CheckBoxOn(mangle) and TargetDebuffExpires(bleed 2)}
		or {BuffPresent(STAMPEDE) and BuffExpires(STAMPEDE 3)}
		or {{TalentPoints(BLOODINTHEWATERTALENT more 1) and ExecuteRange() and TargetDebuffPresent(RIP mine=1)}
			and {{ComboPoints(more 0) and TargetDebuffExpires(RIP 2.9 mine=1)} or ComboPoints(more 4)}}
	{
		UseRacialActions()
		UseItemActions()
		UseProfessionActions()
	}
}

AddIcon size=small mastery=2
{
	if Stance(1) # bear
	{
		Spell(ENRAGE)
		Spell(BERSERK)
	}
	if Stance(3) # cat
	{
		#/feral_charge_cat,if=!in_combat
		if TargetInRange(FERALCHARGECAT)
			unless TargetInRange(MANGLECAT) Spell(FERALCHARGECAT)
		if target.Threat(more 90) and TargetInRange(COWER) Spell(COWER)
	}
}

# Main rotation.
AddIcon help=main mastery=2
{
	if Stance(1) # bear
	{
		MainRotationBear()
	}
	if Stance(3) # cat
	{
		MainRotationCat()

		# Filler Shred/Mangle to generate combo points for finishers.
		#/shred,if=position_back&(buff.tigers_fury.up|buff.berserk.up)
		#/mangle_cat,if=position_front&(buff.tigers_fury.up|buff.berserk.up)
		if BuffPresent(TIGERSFURY) or BuffPresent(BERSERK) AddComboPoint()
		#/shred,if=position_back&((buff.combo_points.stack<5&dot.rip.remains<3.0)|(buff.combo_points.stack=0&buff.savage_roar.remains<2))
		#/mangle_cat,if=position_front&((buff.combo_points.stack<5&dot.rip.remains<3.0)|(buff.combo_points.stack=0&buff.savage_roar.remains<2))
		if ComboPoints(less 5) and TargetDebuffExpires(RIP 3 mine=1) AddComboPoint()
		if ComboPoints(less 1) and BuffExpires(SAVAGEROAR 2) AddComboPoint()
		#/shred,if=position_back&cooldown.tigers_fury.remains<=3.0
		#/mangle_cat,if=position_front&cooldown.tigers_fury.remains<=3.0
		if 3s before Spell(TIGERSFURY) AddComboPoint()
		#/shred,if=position_back&target.time_to_die<=8.5
		#/mangle_cat,if=position_front&target.time_to_die<=8.5
		if TargetDeadIn(less 8.5) AddComboPoint()
		#/shred,if=position_back&time_to_max_energy<=1.0
		#/mangle_cat,if=position_front&time_to_max_energy<=1.0
		if 1s before Mana(more 99) AddComboPoint()
	}
}

# Bear: Maul.
# Cat: Main rotation minus Shred/Mangle fillers.
AddIcon help=main mastery=2
{
	if Stance(1) # bear
	{
		# Use Maul when rage>45 unless Frenzied Regeneration is active and we're relying
		# on the self-healing, in which case use Maul when rage>75 so we don't rage-starve.
		#
		if BuffPresent(FRENZIEDREGENERATION) and Glyph(GLYPHOFFRENZIEDREGENERATION no)
			if Mana(more 75) Spell(MAUL)
		unless BuffPresent(FRENZIEDREGENERATION) and Glyph(GLYPHOFFRENZIEDREGENERATION no)
			if Mana(more 45) Spell(MAUL)
	}
	if Stance(3) # cat
	{
		MainRotationCat()
	}
}

# Long CDs.
AddIcon help=cd mastery=2
{
	if Stance(1) CooldownsBear()
	if Stance(3) CooldownsCat()
}

# Survival CDs.
AddIcon help=cd size=small
{
	Spell(BARKSKIN)
	if Stance(1) or Stance(3) Spell(SURVIVALINSTINCTS)
	if Stance(1) Spell(FRENZIEDREGENERATION)
}

# Bear trinkets.
AddIcon help=cd size=small mastery=2
{
	if Stance(1) # bear
	{
		unless List(trinketcd0 000s) Item(Trinket0Slot usable=1)
		unless List(trinketcd1 000s) Item(Trinket1Slot usable=1)
	}
}
]]