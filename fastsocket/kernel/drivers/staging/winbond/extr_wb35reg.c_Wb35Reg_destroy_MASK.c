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
struct wb35_reg_queue {struct urb* urb; struct wb35_reg_queue* Next; } ;
struct wb35_reg {scalar_t__ EP0vm_state; int /*<<< orphan*/  EP0VM_spin_lock; struct wb35_reg_queue* reg_first; struct wb35_reg_queue* reg_last; } ;
struct urb {int dummy; } ;
struct hw_data {struct wb35_reg reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 scalar_t__ VM_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct wb35_reg_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

void
FUNC7(struct hw_data * pHwData)
{
	struct wb35_reg *reg = &pHwData->reg;
	struct urb	*urb;
	struct wb35_reg_queue *reg_queue;


	FUNC0(pHwData);

	// Wait for Reg operation completed
	do {
		FUNC2(10); // Delay for waiting function enter 940623.1.a
	} while (reg->EP0vm_state != VM_STOP);
	FUNC2(10);  // Delay for waiting function enter 940623.1.b

	// Release all the data in RegQueue
	FUNC4( &reg->EP0VM_spin_lock );
	reg_queue = reg->reg_first;
	while (reg_queue) {
		if (reg_queue == reg->reg_last)
			reg->reg_last = NULL;
		reg->reg_first = reg->reg_first->Next;

		urb = reg_queue->urb;
		FUNC5( &reg->EP0VM_spin_lock );
		if (urb) {
			FUNC6(urb);
			FUNC1(reg_queue);
		} else {
			#ifdef _PE_REG_DUMP_
			printk("EP0 queue release error\n");
			#endif
		}
		FUNC4( &reg->EP0VM_spin_lock );

		reg_queue = reg->reg_first;
	}
	FUNC5( &reg->EP0VM_spin_lock );
}