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
struct vc_data {int vc_pos; int vc_visible_origin; int vc_cols; } ;

/* Variables and functions */
#define  CM_DRAW 130 
#define  CM_ERASE 129 
#define  CM_MOVE 128 
 unsigned short VC2_CTRL_ECDISP ; 
 int /*<<< orphan*/  VC2_IREG_CONTROL ; 
 int /*<<< orphan*/  VC2_IREG_CURSX ; 
 int /*<<< orphan*/  VC2_IREG_CURSY ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  npregs ; 
 int /*<<< orphan*/  xcurs_correction ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, int mode)
{
	unsigned short treg;
	int xcurs, ycurs;

	switch (mode) {
	case CM_ERASE:
		treg = FUNC0(npregs, VC2_IREG_CONTROL);
		FUNC1(npregs, VC2_IREG_CONTROL,
				(treg & ~(VC2_CTRL_ECDISP)));
		break;

	case CM_MOVE:
	case CM_DRAW:
		treg = FUNC0(npregs, VC2_IREG_CONTROL);
		FUNC1(npregs, VC2_IREG_CONTROL,
				(treg | VC2_CTRL_ECDISP));
		xcurs = (vc->vc_pos - vc->vc_visible_origin) / 2;
		ycurs = ((xcurs / vc->vc_cols) << 4) + 31;
		xcurs = ((xcurs % vc->vc_cols) << 3) + xcurs_correction;
		FUNC1(npregs, VC2_IREG_CURSX, xcurs);
		FUNC1(npregs, VC2_IREG_CURSY, ycurs);
	}
}