#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_ymfpci {TYPE_2__* controller_microcode; TYPE_1__* dsp_microcode; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ YDSXGR_CTRLINSTRAM ; 
 scalar_t__ YDSXGR_DSPINSTRAM ; 
 scalar_t__ YDSXGR_EFFCTRLBASE ; 
 int /*<<< orphan*/  YDSXGR_GLOBALCTRL ; 
 scalar_t__ YDSXGR_MAPOFEFFECT ; 
 scalar_t__ YDSXGR_MAPOFREC ; 
 scalar_t__ YDSXGR_MODE ; 
 scalar_t__ YDSXGR_NATIVEDACOUTVOL ; 
 scalar_t__ YDSXGR_PLAYCTRLBASE ; 
 scalar_t__ YDSXGR_RECCTRLBASE ; 
 int YDSXG_CTRLLENGTH ; 
 int YDSXG_DSPLENGTH ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*) ; 
 int FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ymfpci*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct snd_ymfpci *chip)
{
	int i;
	u16 ctrl;
	const __le32 *inst;

	FUNC4(chip, YDSXGR_NATIVEDACOUTVOL, 0x00000000);
	FUNC1(chip);
	FUNC4(chip, YDSXGR_MODE, 0x00010000);
	FUNC4(chip, YDSXGR_MODE, 0x00000000);
	FUNC4(chip, YDSXGR_MAPOFREC, 0x00000000);
	FUNC4(chip, YDSXGR_MAPOFEFFECT, 0x00000000);
	FUNC4(chip, YDSXGR_PLAYCTRLBASE, 0x00000000);
	FUNC4(chip, YDSXGR_RECCTRLBASE, 0x00000000);
	FUNC4(chip, YDSXGR_EFFCTRLBASE, 0x00000000);
	ctrl = FUNC3(chip, YDSXGR_GLOBALCTRL);
	FUNC5(chip, YDSXGR_GLOBALCTRL, ctrl & ~0x0007);

	/* setup DSP instruction code */
	inst = (const __le32 *)chip->dsp_microcode->data;
	for (i = 0; i < YDSXG_DSPLENGTH / 4; i++)
		FUNC4(chip, YDSXGR_DSPINSTRAM + (i << 2),
				  FUNC0(inst[i]));

	/* setup control instruction code */
	inst = (const __le32 *)chip->controller_microcode->data;
	for (i = 0; i < YDSXG_CTRLLENGTH / 4; i++)
		FUNC4(chip, YDSXGR_CTRLINSTRAM + (i << 2),
				  FUNC0(inst[i]));

	FUNC2(chip);
}