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
struct pcxhr_rmh {int /*<<< orphan*/ * cmd; } ;
struct pcxhr_mgr {int dsp_loaded; int /*<<< orphan*/  is_hr_stereo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACCESS_IO_WRITE ; 
 int /*<<< orphan*/  IO_NUM_REG_MUTE_OUT ; 
 int PCXHR_FIRMWARE_DSP_EPRM_INDEX ; 
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ; 
 int PCXHR_FIRMWARE_XLX_COM_INDEX ; 
 int /*<<< orphan*/  REG_CONT_UNMUTE_INPUTS ; 
 int /*<<< orphan*/  FUNC0 (struct pcxhr_rmh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcxhr_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct pcxhr_mgr *mgr)
{
	struct pcxhr_rmh rmh;

	if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)) {
		/* mute outputs */
	    if (!mgr->is_hr_stereo) {
		/* a read to IO_NUM_REG_MUTE_OUT register unmutes! */
		FUNC0(&rmh, CMD_ACCESS_IO_WRITE);
		rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
		FUNC3(mgr, &rmh);
		/* mute inputs */
		FUNC4(mgr, REG_CONT_UNMUTE_INPUTS,
					    0, NULL);
	    }
		/* stereo cards mute with reset of dsp */
	}
	/* reset pcxhr dsp */
	if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_EPRM_INDEX))
		FUNC1(mgr);
	/* reset second xilinx */
	if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_XLX_COM_INDEX)) {
		FUNC2(mgr);
		mgr->dsp_loaded = 1;
	}
	return;
}