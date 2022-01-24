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
struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_status_out; int /*<<< orphan*/  spdif_csuv_stream; int /*<<< orphan*/  master_mix_scb; int /*<<< orphan*/  asynch_tx_scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCTX_SCB_ADDR ; 
 int DSP_SPDIF_STATUS_HW_ENABLED ; 
 int DSP_SPDIF_STATUS_OUTPUT_ENABLED ; 
 int DSP_SPDIF_STATUS_PLAYBACK_OPEN ; 
 int /*<<< orphan*/  SCB_ON_PARENT_NEXT_SCB ; 
 int /*<<< orphan*/  SPDIFO_IP_OUTPUT_BUFFER1 ; 
 int /*<<< orphan*/  SPDIFO_SCB_INST ; 
 int /*<<< orphan*/  SP_SPDOUT_CSUV ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs46xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if ( ins->spdif_status_out & DSP_SPDIF_STATUS_OUTPUT_ENABLED ) {
		/* remove AsynchFGTxSCB and and PCMSerialInput_II */
		FUNC1 (chip);

		/* save state */
		ins->spdif_status_out |= DSP_SPDIF_STATUS_OUTPUT_ENABLED;
	}
	
	/* if not enabled already */
	if ( !(ins->spdif_status_out & DSP_SPDIF_STATUS_HW_ENABLED) ) {
		FUNC2 (chip);
	}

	/* Create the asynch. transfer task  for playback */
	ins->asynch_tx_scb = FUNC0(chip,"AsynchFGTxSCB",ASYNCTX_SCB_ADDR,
								SPDIFO_SCB_INST,
								SPDIFO_IP_OUTPUT_BUFFER1,
								ins->master_mix_scb,
								SCB_ON_PARENT_NEXT_SCB);


	/* set spdif channel status value for streaming */
	FUNC3 (chip,SP_SPDOUT_CSUV, ins->spdif_csuv_stream);

	ins->spdif_status_out  |= DSP_SPDIF_STATUS_PLAYBACK_OPEN;

	return 0;
}