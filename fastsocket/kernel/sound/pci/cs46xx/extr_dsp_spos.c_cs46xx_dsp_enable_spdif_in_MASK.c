#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_cs46xx {int /*<<< orphan*/  spos_mutex; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  (* amplifier_ctrl ) (struct snd_cs46xx*,int) ;int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int asynch_rx_scb; int spdif_status_out; int spdif_status_in; int /*<<< orphan*/  spdif_in_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCRX_SCB_ADDR ; 
 int DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED ; 
 int EINVAL ; 
 int /*<<< orphan*/  SCB_ON_PARENT_SUBLIST_SCB ; 
 int /*<<< orphan*/  SPDIFI_IP_OUTPUT_BUFFER1 ; 
 int /*<<< orphan*/  SPDIFI_SCB_INST ; 
 int /*<<< orphan*/  SP_ASER_COUNTDOWN ; 
 int /*<<< orphan*/  SP_SPDIN_CONTROL ; 
 int FUNC0 (struct snd_cs46xx*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_cs46xx*,int) ; 

int FUNC11 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	/* turn on amplifier */
	chip->active_ctrl(chip, 1);
	chip->amplifier_ctrl(chip, 1);

	if (FUNC6(ins->asynch_rx_scb))
		return -EINVAL;
	if (FUNC6(!ins->spdif_in_src))
		return -EINVAL;

	FUNC4(&chip->spos_mutex);

	if ( ! (ins->spdif_status_out & DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED) ) {
		/* time countdown enable */
		FUNC2 (chip,SP_ASER_COUNTDOWN, 0x80000005);
		/* NOTE: 80000005 value is just magic. With all values
		   that I've tested this one seem to give the best result.
		   Got no explication why. (Benny) */

		/* SPDIF input MASTER ENABLE */
		FUNC2 (chip,SP_SPDIN_CONTROL, 0x800003ff);

		ins->spdif_status_out |= DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED;
	}

	/* create and start the asynchronous receiver SCB */
	ins->asynch_rx_scb = FUNC0(chip,"AsynchFGRxSCB",
								ASYNCRX_SCB_ADDR,
								SPDIFI_SCB_INST,
								SPDIFI_IP_OUTPUT_BUFFER1,
								ins->spdif_in_src,
								SCB_ON_PARENT_SUBLIST_SCB);

	FUNC7(&chip->reg_lock);

	/* reset SPDIF input sample buffer pointer */
	/*snd_cs46xx_poke (chip, (SPDIFI_SCB_INST + 0x0c) << 2,
	  (SPDIFI_IP_OUTPUT_BUFFER1 << 0x10) | 0xFFFC);*/

	/* reset FIFO ptr */
	/*cs46xx_poke_via_dsp (chip,SP_SPDIN_FIFOPTR, 0x0);*/
	FUNC3(chip,ins->spdif_in_src);

	/* unmute SRC volume */
	FUNC1 (chip,ins->spdif_in_src,0x7fff,0x7fff);

	FUNC8(&chip->reg_lock);

	/* set SPDIF input sample rate and unmute
	   NOTE: only 48khz support for SPDIF input this time */
	/* cs46xx_dsp_set_src_sample_rate(chip,ins->spdif_in_src,48000); */

	/* monitor state */
	ins->spdif_status_in = 1;
	FUNC5(&chip->spos_mutex);

	return 0;
}