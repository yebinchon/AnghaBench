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
struct wb35_rx {scalar_t__ EP3vm_state; scalar_t__ RxUrb; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;

/* Variables and functions */
 scalar_t__ VM_STOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct hw_data * pHwData)
{
	struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;

	do {
		FUNC0(10); // Delay for waiting function enter 940623.1.a
	} while (pWb35Rx->EP3vm_state != VM_STOP);
	FUNC0(10); // Delay for waiting function exit 940623.1.b

	if (pWb35Rx->RxUrb)
		FUNC2( pWb35Rx->RxUrb );
	#ifdef _PE_RX_DUMP_
	printk("Wb35Rx_destroy OK\n");
	#endif
}