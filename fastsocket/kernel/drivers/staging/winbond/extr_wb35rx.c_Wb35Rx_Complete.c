
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct wb35_rx {scalar_t__ EP3VM_status; size_t CurrentRxBufferId; int* RxOwner; int ByteReceived; int* RxBufferSize; void* EP3vm_state; int RxFireCounter; int * pDRx; int Ep3ErrorCount2; scalar_t__ rx_halt; } ;
struct hw_data {scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_rx Wb35Rx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct urb {scalar_t__ status; scalar_t__ actual_length; struct ieee80211_hw* context; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;
struct TYPE_2__ {size_t R00_receive_byte_count; int value; } ;
typedef TYPE_1__ R00_DESCRIPTOR ;


 int HAL_USB_MODE_BURST (struct hw_data*) ;
 void* VM_COMPLETED ;
 void* VM_STOP ;
 int Wb35Rx (struct ieee80211_hw*) ;
 int Wb35Rx_indicate (struct ieee80211_hw*) ;
 int atomic_dec (int *) ;
 int kfree (int *) ;
 int le32_to_cpu (size_t) ;
 int printk (char*) ;

__attribute__((used)) static void Wb35Rx_Complete(struct urb *urb)
{
 struct ieee80211_hw *hw = urb->context;
 struct wbsoft_priv *priv = hw->priv;
 struct hw_data * pHwData = &priv->sHwData;
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;
 u8 * pRxBufferAddress;
 u32 SizeCheck;
 u16 BulkLength;
 u32 RxBufferId;
 R00_DESCRIPTOR R00;


 pWb35Rx->EP3vm_state = VM_COMPLETED;
 pWb35Rx->EP3VM_status = urb->status;

 RxBufferId = pWb35Rx->CurrentRxBufferId;

 pRxBufferAddress = pWb35Rx->pDRx;
 BulkLength = (u16)urb->actual_length;


 pWb35Rx->EP3vm_state = VM_COMPLETED;

 if (pHwData->SurpriseRemove || pHwData->HwStop)
  goto error;

 if (pWb35Rx->rx_halt)
  goto error;


 pWb35Rx->RxOwner[ RxBufferId ] = 0;
 R00.value = le32_to_cpu(*(u32 *)pRxBufferAddress);


 if (pWb35Rx->EP3VM_status != 0) {



  pWb35Rx->EP3vm_state = VM_STOP;
  goto error;
 }


 if (!HAL_USB_MODE_BURST(pHwData)) {
  SizeCheck = R00.R00_receive_byte_count;
  if ((SizeCheck & 0x03) > 0)
   SizeCheck -= 4;
  SizeCheck = (SizeCheck + 3) & ~0x03;
  SizeCheck += 12;
  if ((BulkLength > 1600) ||
   (SizeCheck > 1600) ||
   (BulkLength != SizeCheck) ||
   (BulkLength == 0)) {
   pWb35Rx->EP3vm_state = VM_STOP;
   pWb35Rx->Ep3ErrorCount2++;
  }
 }


 pWb35Rx->ByteReceived += BulkLength;
 pWb35Rx->RxBufferSize[ RxBufferId ] = BulkLength;

 if (!pWb35Rx->RxOwner[ RxBufferId ])
  Wb35Rx_indicate(hw);

 kfree(pWb35Rx->pDRx);

 Wb35Rx(hw);
 return;

error:
 pWb35Rx->RxOwner[ RxBufferId ] = 1;
 atomic_dec(&pWb35Rx->RxFireCounter);
 pWb35Rx->EP3vm_state = VM_STOP;
}
