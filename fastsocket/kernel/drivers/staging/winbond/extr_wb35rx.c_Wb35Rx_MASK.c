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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;
struct wb35_rx {size_t RxBufferId; size_t CurrentRxBufferId; int /*<<< orphan*/  RxFireCounter; int /*<<< orphan*/  EP3vm_state; int /*<<< orphan*/ * pDRx; int /*<<< orphan*/ * RxOwner; scalar_t__ rx_halt; struct urb* RxUrb; } ;
struct hw_data {TYPE_1__ WbUsb; scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_rx Wb35Rx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct urb {int dummy; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_USB_RX_BUFFER ; 
 size_t MAX_USB_RX_BUFFER_NUMBER ; 
 int /*<<< orphan*/  VM_RUNNING ; 
 int /*<<< orphan*/  VM_STOP ; 
 int /*<<< orphan*/  Wb35Rx_Complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct wbsoft_priv *priv = hw->priv;
	struct hw_data * pHwData = &priv->sHwData;
	struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;
	u8 *	pRxBufferAddress;
	struct urb *urb = pWb35Rx->RxUrb;
	int	retv;
	u32	RxBufferId;

	//
	// Issuing URB
	//
	if (pHwData->SurpriseRemove || pHwData->HwStop)
		goto error;

	if (pWb35Rx->rx_halt)
		goto error;

	// Get RxBuffer's ID
	RxBufferId = pWb35Rx->RxBufferId;
	if (!pWb35Rx->RxOwner[RxBufferId]) {
		// It's impossible to run here.
		#ifdef _PE_RX_DUMP_
		printk("Rx driver fifo unavailable\n");
		#endif
		goto error;
	}

	// Update buffer point, then start to bulkin the data from USB
	pWb35Rx->RxBufferId++;
	pWb35Rx->RxBufferId %= MAX_USB_RX_BUFFER_NUMBER;

	pWb35Rx->CurrentRxBufferId = RxBufferId;

	pWb35Rx->pDRx = FUNC1(MAX_USB_RX_BUFFER, GFP_ATOMIC);
	if (!pWb35Rx->pDRx) {
		FUNC2("w35und: Rx memory alloc failed\n");
		goto error;
	}
	pRxBufferAddress = pWb35Rx->pDRx;

	FUNC3(urb, pHwData->WbUsb.udev,
			  FUNC4(pHwData->WbUsb.udev, 3),
			  pRxBufferAddress, MAX_USB_RX_BUFFER,
			  Wb35Rx_Complete, hw);

	pWb35Rx->EP3vm_state = VM_RUNNING;

	retv = FUNC5(urb, GFP_ATOMIC);

	if (retv != 0) {
		FUNC2("Rx URB sending error\n");
		goto error;
	}
	return;

error:
	// VM stop
	pWb35Rx->EP3vm_state = VM_STOP;
	FUNC0(&pWb35Rx->RxFireCounter);
}