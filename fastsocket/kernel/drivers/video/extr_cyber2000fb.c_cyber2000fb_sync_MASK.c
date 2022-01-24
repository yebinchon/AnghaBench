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
struct fb_info {int dummy; } ;
struct TYPE_3__ {int accel_flags; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct cfb_info {TYPE_2__ fb; } ;

/* Variables and functions */
 int CO_CTRL_BUSY ; 
 int /*<<< orphan*/  CO_REG_CONTROL ; 
 int FB_ACCELF_TEXT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info)
{
	struct cfb_info *cfb = (struct cfb_info *)info;
	int count = 100000;

	if (!(cfb->fb.var.accel_flags & FB_ACCELF_TEXT))
		return 0;

	while (FUNC0(CO_REG_CONTROL, cfb) & CO_CTRL_BUSY) {
		if (!count--) {
			FUNC2("accel_wait timed out\n");
			FUNC1(0, CO_REG_CONTROL, cfb);
			break;
		}
		FUNC3(1);
	}
	return 0;
}