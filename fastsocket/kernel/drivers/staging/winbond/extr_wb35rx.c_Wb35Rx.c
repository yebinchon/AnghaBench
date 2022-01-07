
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int udev; } ;
struct wb35_rx {size_t RxBufferId; size_t CurrentRxBufferId; int RxFireCounter; int EP3vm_state; int * pDRx; int * RxOwner; scalar_t__ rx_halt; struct urb* RxUrb; } ;
struct hw_data {TYPE_1__ WbUsb; scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_rx Wb35Rx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct urb {int dummy; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;


 int GFP_ATOMIC ;
 int MAX_USB_RX_BUFFER ;
 size_t MAX_USB_RX_BUFFER_NUMBER ;
 int VM_RUNNING ;
 int VM_STOP ;
 int Wb35Rx_Complete ;
 int atomic_dec (int *) ;
 int * kzalloc (int ,int ) ;
 int printk (char*) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct ieee80211_hw*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void Wb35Rx(struct ieee80211_hw *hw)
{
 struct wbsoft_priv *priv = hw->priv;
 struct hw_data * pHwData = &priv->sHwData;
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;
 u8 * pRxBufferAddress;
 struct urb *urb = pWb35Rx->RxUrb;
 int retv;
 u32 RxBufferId;




 if (pHwData->SurpriseRemove || pHwData->HwStop)
  goto error;

 if (pWb35Rx->rx_halt)
  goto error;


 RxBufferId = pWb35Rx->RxBufferId;
 if (!pWb35Rx->RxOwner[RxBufferId]) {




  goto error;
 }


 pWb35Rx->RxBufferId++;
 pWb35Rx->RxBufferId %= MAX_USB_RX_BUFFER_NUMBER;

 pWb35Rx->CurrentRxBufferId = RxBufferId;

 pWb35Rx->pDRx = kzalloc(MAX_USB_RX_BUFFER, GFP_ATOMIC);
 if (!pWb35Rx->pDRx) {
  printk("w35und: Rx memory alloc failed\n");
  goto error;
 }
 pRxBufferAddress = pWb35Rx->pDRx;

 usb_fill_bulk_urb(urb, pHwData->WbUsb.udev,
     usb_rcvbulkpipe(pHwData->WbUsb.udev, 3),
     pRxBufferAddress, MAX_USB_RX_BUFFER,
     Wb35Rx_Complete, hw);

 pWb35Rx->EP3vm_state = VM_RUNNING;

 retv = usb_submit_urb(urb, GFP_ATOMIC);

 if (retv != 0) {
  printk("Rx URB sending error\n");
  goto error;
 }
 return;

error:

 pWb35Rx->EP3vm_state = VM_STOP;
 atomic_dec(&pWb35Rx->RxFireCounter);
}
