#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ playback_fifo_size; scalar_t__ record_fifo_size; int interwave_fifo_reg; TYPE_4__* record_fifo_block; TYPE_3__* playback_fifo_block; } ;
struct TYPE_7__ {int default_voice_address; scalar_t__ memory; int hw_lfo; int sw_lfo; scalar_t__ active_voice; scalar_t__ enh_mode; TYPE_1__* voices; } ;
struct snd_gus_card {int joystick_dac; TYPE_5__ chip; scalar_t__ pnp_flag; int /*<<< orphan*/  reg_lock; scalar_t__ mix_cntrl_reg; TYPE_2__ gf1; } ;
struct TYPE_9__ {int ptr; } ;
struct TYPE_8__ {int ptr; } ;
struct TYPE_6__ {unsigned int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  GF1PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIXCNTRLREG ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_GLOBAL_MODE ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_MEMORY_CONTROL ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_RESET ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_VOICES_IRQ ; 
 int /*<<< orphan*/  SNDRV_GF1_GW_FIFO_PLAY_BASE_ADDR ; 
 int /*<<< orphan*/  SNDRV_GF1_GW_FIFO_RECORD_BASE_ADDR ; 
 int /*<<< orphan*/  SNDRV_GF1_GW_FIFO_SIZE ; 
 unsigned int SNDRV_GF1_HANDLER_ALL ; 
 unsigned int SNDRV_GF1_HANDLER_VOICE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_gus_card*) ; 
 int FUNC5 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_gus_card*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_gus_card*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

int FUNC22(struct snd_gus_card * gus)
{
	unsigned long flags;
	unsigned int i;

	FUNC8(gus, SNDRV_GF1_GB_RESET, 0);	/* reset GF1 */
	FUNC21(160);
	FUNC8(gus, SNDRV_GF1_GB_RESET, 1);	/* disable IRQ & DAC */
	FUNC21(160);
	FUNC8(gus, SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL, gus->joystick_dac);

	FUNC15(gus, SNDRV_GF1_HANDLER_ALL);
	for (i = 0; i < 32; i++) {
		gus->gf1.voices[i].number = i;
		FUNC15(gus, SNDRV_GF1_HANDLER_VOICE | i);
	}

	FUNC17(gus, 0x03);	/* huh.. this cleanup took me some time... */

	if (gus->gf1.enh_mode) {	/* enhanced mode !!!! */
		FUNC8(gus, SNDRV_GF1_GB_GLOBAL_MODE, FUNC5(gus, SNDRV_GF1_GB_GLOBAL_MODE) | 0x01);
		FUNC8(gus, SNDRV_GF1_GB_MEMORY_CONTROL, 0x01);
	}
	FUNC2(gus);
	FUNC14(gus);
	FUNC4(gus);
	gus->gf1.default_voice_address = gus->gf1.memory > 0 ? 0 : 512 - 8;
	/* initialize LFOs & clear LFOs memory */
	if (gus->gf1.enh_mode && gus->gf1.memory) {
		gus->gf1.hw_lfo = 1;
		gus->gf1.default_voice_address += 1024;
	} else {
		gus->gf1.sw_lfo = 1;
	}
#if 0
	snd_gf1_lfo_init(gus);
#endif
	if (gus->gf1.memory > 0)
		for (i = 0; i < 4; i++)
			FUNC13(gus, gus->gf1.default_voice_address + i, 0);
	FUNC2(gus);
	FUNC3(gus, 0, 31);
	FUNC10(gus);
	FUNC21(160);
	FUNC8(gus, SNDRV_GF1_GB_RESET, 7);	/* Reset Register = IRQ enable, DAC enable */
	FUNC21(160);
	FUNC8(gus, SNDRV_GF1_GB_RESET, 7);	/* Reset Register = IRQ enable, DAC enable */
	if (gus->gf1.enh_mode) {	/* enhanced mode !!!! */
		FUNC8(gus, SNDRV_GF1_GB_GLOBAL_MODE, FUNC5(gus, SNDRV_GF1_GB_GLOBAL_MODE) | 0x01);
		FUNC8(gus, SNDRV_GF1_GB_MEMORY_CONTROL, 0x01);
	}
	while ((FUNC6(gus, SNDRV_GF1_GB_VOICES_IRQ) & 0xc0) != 0xc0);

	FUNC19(&gus->reg_lock, flags);
	FUNC1(gus->gf1.active_voice = 0, FUNC0(gus, GF1PAGE));
	FUNC1(gus->mix_cntrl_reg, FUNC0(gus, MIXCNTRLREG));
	FUNC20(&gus->reg_lock, flags);

	FUNC16(gus);
	FUNC10(gus);
	FUNC11(gus);
	FUNC12(gus);
#ifdef CONFIG_SND_DEBUG
	snd_gus_irq_profile_init(gus);
#endif

#if 0
	if (gus->pnp_flag) {
		if (gus->chip.playback_fifo_size > 0)
			snd_gf1_i_write16(gus, SNDRV_GF1_GW_FIFO_RECORD_BASE_ADDR, gus->chip.playback_fifo_block->ptr >> 8);
		if (gus->chip.record_fifo_size > 0)
			snd_gf1_i_write16(gus, SNDRV_GF1_GW_FIFO_PLAY_BASE_ADDR, gus->chip.record_fifo_block->ptr >> 8);
		snd_gf1_i_write16(gus, SNDRV_GF1_GW_FIFO_SIZE, gus->chip.interwave_fifo_reg);
	}
#endif

	return 0;
}