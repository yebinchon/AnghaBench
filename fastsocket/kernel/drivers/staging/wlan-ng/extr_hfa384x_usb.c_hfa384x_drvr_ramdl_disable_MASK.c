#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dlstate; } ;
typedef  TYPE_1__ hfa384x_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HFA384x_DLSTATE_DISABLED ; 
 scalar_t__ HFA384x_DLSTATE_RAMENABLED ; 
 int /*<<< orphan*/  HFA384x_PROGMODE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(hfa384x_t *hw)
{
	/* Check that we're already in the download state */
	if (hw->dlstate != HFA384x_DLSTATE_RAMENABLED)
		return -EINVAL;

	FUNC1("ramdl_disable()\n");

	/* There isn't much we can do at this point, so I don't */
	/*  bother  w/ the return value */
	FUNC0(hw, HFA384x_PROGMODE_DISABLE, 0, 0, 0);
	hw->dlstate = HFA384x_DLSTATE_DISABLED;

	return 0;
}