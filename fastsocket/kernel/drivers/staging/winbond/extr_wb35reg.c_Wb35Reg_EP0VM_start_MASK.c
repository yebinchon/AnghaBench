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
struct wb35_reg {int /*<<< orphan*/  RegFireCount; int /*<<< orphan*/  EP0vm_state; } ;
struct hw_data {struct wb35_reg reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(  struct hw_data * pHwData )
{
	struct wb35_reg *reg = &pHwData->reg;

	if (FUNC2(&reg->RegFireCount) == 1) {
		reg->EP0vm_state = VM_RUNNING;
		FUNC0(pHwData);
	} else
		FUNC1(&reg->RegFireCount);
}