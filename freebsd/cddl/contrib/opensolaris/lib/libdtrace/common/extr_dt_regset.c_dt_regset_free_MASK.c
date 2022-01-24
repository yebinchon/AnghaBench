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
struct TYPE_3__ {int dr_size; int /*<<< orphan*/  dr_bitmap; } ;
typedef  TYPE_1__ dt_regset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(dt_regset_t *drp, int reg)
{
	FUNC2(reg >= 0 && reg < drp->dr_size);
	FUNC2(FUNC1(drp->dr_bitmap, reg) != 0);
	FUNC0(drp->dr_bitmap, reg);
}