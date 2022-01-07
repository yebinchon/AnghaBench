
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct wb35_mds {scalar_t__* TxBufferSize; scalar_t__* TxCountInBuffer; int * TxOwner; } ;
struct TYPE_2__ {int udev; } ;
struct wb35_tx {size_t TxSendIndex; int TxFillCount; int TxFireCounter; int EP4vm_state; int ByteTransfer; int ** TxBuffer; scalar_t__ tx_halt; scalar_t__ Tx4Urb; } ;
struct hw_data {TYPE_1__ WbUsb; scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct wb35_mds Mds; struct hw_data sHwData; } ;
struct urb {int dummy; } ;


 int GFP_ATOMIC ;
 int VM_RUNNING ;
 int VM_STOP ;
 int Wb35Tx_EP2VM_start (struct wbsoft_priv*) ;
 int Wb35Tx_complete ;
 int atomic_dec (int *) ;
 int printk (char*) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,scalar_t__,int ,struct wbsoft_priv*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void Wb35Tx(struct wbsoft_priv *adapter)
{
 struct hw_data * pHwData = &adapter->sHwData;
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;
 u8 *pTxBufferAddress;
 struct wb35_mds *pMds = &adapter->Mds;
 struct urb * pUrb = (struct urb *)pWb35Tx->Tx4Urb;
 int retv;
 u32 SendIndex;


 if (pHwData->SurpriseRemove || pHwData->HwStop)
  goto cleanup;

 if (pWb35Tx->tx_halt)
  goto cleanup;


 SendIndex = pWb35Tx->TxSendIndex;
 if (!pMds->TxOwner[SendIndex])
  goto cleanup;

 pTxBufferAddress = pWb35Tx->TxBuffer[SendIndex];



 usb_fill_bulk_urb(pUrb, pHwData->WbUsb.udev,
     usb_sndbulkpipe(pHwData->WbUsb.udev, 4),
     pTxBufferAddress, pMds->TxBufferSize[ SendIndex ],
     Wb35Tx_complete, adapter);

 pWb35Tx->EP4vm_state = VM_RUNNING;
 retv = usb_submit_urb(pUrb, GFP_ATOMIC);
 if (retv<0) {
  printk("EP4 Tx Irp sending error\n");
  goto cleanup;
 }


 pWb35Tx->TxFillCount += pMds->TxCountInBuffer[SendIndex];
 if (pWb35Tx->TxFillCount > 12)
  Wb35Tx_EP2VM_start(adapter);

 pWb35Tx->ByteTransfer += pMds->TxBufferSize[SendIndex];
 return;

 cleanup:
 pWb35Tx->EP4vm_state = VM_STOP;
 atomic_dec(&pWb35Tx->TxFireCounter);
}
