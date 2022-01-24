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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;
struct wb35_tx {int /*<<< orphan*/  TxResultCount; int /*<<< orphan*/  EP2vm_state; scalar_t__ tx_halt; scalar_t__ EP2_buf; scalar_t__ Tx2Urb; } ;
struct hw_data {TYPE_1__ WbUsb; scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_INTERRUPT_LENGTH ; 
 int /*<<< orphan*/  VM_RUNNING ; 
 int /*<<< orphan*/  VM_STOP ; 
 int /*<<< orphan*/  Wb35Tx_EP2VM_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wbsoft_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wbsoft_priv *adapter)
{
	struct hw_data *	pHwData = &adapter->sHwData;
	struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;
	struct urb *	pUrb = (struct urb *)pWb35Tx->Tx2Urb;
	u32 *	pltmp = (u32 *)pWb35Tx->EP2_buf;
	int		retv;

	if (pHwData->SurpriseRemove || pHwData->HwStop)
		goto error;

	if (pWb35Tx->tx_halt)
		goto error;

	//
	// Issuing URB
	//
	FUNC2( pUrb, pHwData->WbUsb.udev, FUNC3(pHwData->WbUsb.udev,2),
			  pltmp, MAX_INTERRUPT_LENGTH, Wb35Tx_EP2VM_complete, adapter, 32);

	pWb35Tx->EP2vm_state = VM_RUNNING;
	retv = FUNC4(pUrb, GFP_ATOMIC);

	if (retv < 0) {
		#ifdef _PE_TX_DUMP_
		printk("EP2 Tx Irp sending error\n");
		#endif
		goto error;
	}

	return;
error:
	pWb35Tx->EP2vm_state = VM_STOP;
	FUNC0(&pWb35Tx->TxResultCount);
}