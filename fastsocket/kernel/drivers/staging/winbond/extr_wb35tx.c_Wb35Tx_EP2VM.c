
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int udev; } ;
struct wb35_tx {int TxResultCount; int EP2vm_state; scalar_t__ tx_halt; scalar_t__ EP2_buf; scalar_t__ Tx2Urb; } ;
struct hw_data {TYPE_1__ WbUsb; scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct urb {int dummy; } ;


 int GFP_ATOMIC ;
 int MAX_INTERRUPT_LENGTH ;
 int VM_RUNNING ;
 int VM_STOP ;
 int Wb35Tx_EP2VM_complete ;
 int atomic_dec (int *) ;
 int printk (char*) ;
 int usb_fill_int_urb (struct urb*,int ,int ,int *,int ,int ,struct wbsoft_priv*,int) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void Wb35Tx_EP2VM(struct wbsoft_priv *adapter)
{
 struct hw_data * pHwData = &adapter->sHwData;
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;
 struct urb * pUrb = (struct urb *)pWb35Tx->Tx2Urb;
 u32 * pltmp = (u32 *)pWb35Tx->EP2_buf;
 int retv;

 if (pHwData->SurpriseRemove || pHwData->HwStop)
  goto error;

 if (pWb35Tx->tx_halt)
  goto error;




 usb_fill_int_urb( pUrb, pHwData->WbUsb.udev, usb_rcvintpipe(pHwData->WbUsb.udev,2),
     pltmp, MAX_INTERRUPT_LENGTH, Wb35Tx_EP2VM_complete, adapter, 32);

 pWb35Tx->EP2vm_state = VM_RUNNING;
 retv = usb_submit_urb(pUrb, GFP_ATOMIC);

 if (retv < 0) {



  goto error;
 }

 return;
error:
 pWb35Tx->EP2vm_state = VM_STOP;
 atomic_dec(&pWb35Tx->TxResultCount);
}
