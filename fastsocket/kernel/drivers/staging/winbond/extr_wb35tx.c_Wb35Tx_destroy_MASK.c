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
struct wb35_tx {scalar_t__ EP2vm_state; scalar_t__ EP4vm_state; scalar_t__ Tx2Urb; scalar_t__ Tx4Urb; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;

/* Variables and functions */
 scalar_t__ VM_STOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct hw_data * pHwData)
{
	struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;

	// Wait for VM stop
	do {
		FUNC0(10);  // Delay for waiting function enter 940623.1.a
	} while( (pWb35Tx->EP2vm_state != VM_STOP) && (pWb35Tx->EP4vm_state != VM_STOP) );
	FUNC0(10);  // Delay for waiting function enter 940623.1.b

	if (pWb35Tx->Tx4Urb)
		FUNC2( pWb35Tx->Tx4Urb );

	if (pWb35Tx->Tx2Urb)
		FUNC2( pWb35Tx->Tx2Urb );

	#ifdef _PE_TX_DUMP_
	printk("Wb35Tx_destroy OK\n");
	#endif
}