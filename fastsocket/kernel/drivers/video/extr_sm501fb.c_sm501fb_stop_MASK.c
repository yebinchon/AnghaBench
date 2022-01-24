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
struct sm501fb_info {int /*<<< orphan*/  regs_res; int /*<<< orphan*/  regs; int /*<<< orphan*/  fbmem_res; int /*<<< orphan*/  fbmem; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  SM501_GATE_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sm501fb_info *info)
{
	/* disable display controller */
	FUNC3(info->dev->parent, SM501_GATE_DISPLAY, 0);

	FUNC0(info->fbmem);
	FUNC2(info->fbmem_res);
	FUNC1(info->fbmem_res);

	FUNC0(info->regs);
	FUNC2(info->regs_res);
	FUNC1(info->regs_res);
}