#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {scalar_t__ control_register; scalar_t__ e3g_frq_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSP_VC_WRITE_CONTROL_REG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u32 ctl, u32 frq,
			     char force)
{
	if (FUNC4(chip))
		return -EIO;

	FUNC0(("WriteControlReg: Setting 0x%x, 0x%x\n", ctl, frq));

	ctl = FUNC2(ctl);
	frq = FUNC2(frq);

	if (ctl != chip->comm_page->control_register ||
	    frq != chip->comm_page->e3g_frq_register || force) {
		chip->comm_page->e3g_frq_register = frq;
		chip->comm_page->control_register = ctl;
		FUNC1(chip);
		return FUNC3(chip, DSP_VC_WRITE_CONTROL_REG);
	}

	FUNC0(("WriteControlReg: not written, no change\n"));
	return 0;
}