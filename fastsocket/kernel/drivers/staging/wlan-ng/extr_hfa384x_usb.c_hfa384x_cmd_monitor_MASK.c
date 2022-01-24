#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  hfa384x_t ;
struct TYPE_3__ {int cmd; scalar_t__ parm2; scalar_t__ parm1; scalar_t__ parm0; } ;
typedef  TYPE_1__ hfa384x_metacmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384x_CMDCODE_MONITOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC3(hfa384x_t *hw, u16 enable)
{
	int result = 0;
	hfa384x_metacmd_t cmd;

	cmd.cmd = FUNC1(HFA384x_CMDCODE_MONITOR) |
	    FUNC0(enable);
	cmd.parm0 = 0;
	cmd.parm1 = 0;
	cmd.parm2 = 0;

	result = FUNC2(hw, &cmd);

	return result;
}