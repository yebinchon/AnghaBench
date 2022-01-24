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
struct dsp_spos_instance {int spdif_csuv_default; int /*<<< orphan*/  spdif_status_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_ASER_FADDR ; 
 int /*<<< orphan*/  DSP_SPDIF_STATUS_HW_ENABLED ; 
 int /*<<< orphan*/  SP_SPDOUT_CONTROL ; 
 int /*<<< orphan*/  SP_SPDOUT_CSUV ; 
 int SP_SPDOUT_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	/* if hw-ctrl already enabled, turn off to reset logic ... */
	FUNC0 (chip);
	FUNC3(50);

	/* set SPDIF output FIFO slot */
	FUNC2(chip, BA0_ASER_FADDR, ( 0x8000 | ((SP_SPDOUT_FIFO >> 4) << 4) ));

	/* SPDIF output MASTER ENABLE */
	FUNC1 (chip,SP_SPDOUT_CONTROL, 0x80000000);

	/* right and left validate bit */
	FUNC1 (chip,SP_SPDOUT_CSUV, ins->spdif_csuv_default);

	/* monitor state */
	ins->spdif_status_out |= DSP_SPDIF_STATUS_HW_ENABLED;

	return 0;
}