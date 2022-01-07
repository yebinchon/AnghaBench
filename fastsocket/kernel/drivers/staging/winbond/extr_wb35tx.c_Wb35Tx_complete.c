
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_mds {scalar_t__* TxOwner; } ;
struct wb35_tx {scalar_t__ EP4VM_status; size_t TxSendIndex; void* EP4vm_state; int TxFireCounter; scalar_t__ tx_halt; } ;
struct hw_data {scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct wb35_mds Mds; struct hw_data sHwData; } ;
struct urb {scalar_t__ status; struct wbsoft_priv* context; } ;


 size_t MAX_USB_TX_BUFFER_NUMBER ;
 int Mds_Tx (struct wbsoft_priv*) ;
 void* VM_COMPLETED ;
 void* VM_STOP ;
 int Wb35Tx (struct wbsoft_priv*) ;
 int atomic_dec (int *) ;
 int printk (char*) ;

__attribute__((used)) static void Wb35Tx_complete(struct urb * pUrb)
{
 struct wbsoft_priv *adapter = pUrb->context;
 struct hw_data * pHwData = &adapter->sHwData;
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;
 struct wb35_mds *pMds = &adapter->Mds;

 printk("wb35: tx complete\n");

 pWb35Tx->EP4vm_state = VM_COMPLETED;
 pWb35Tx->EP4VM_status = pUrb->status;
 pMds->TxOwner[ pWb35Tx->TxSendIndex ] = 0;
 pWb35Tx->TxSendIndex++;
 pWb35Tx->TxSendIndex %= MAX_USB_TX_BUFFER_NUMBER;

 if (pHwData->SurpriseRemove || pHwData->HwStop)
  goto error;

 if (pWb35Tx->tx_halt)
  goto error;


 if (pWb35Tx->EP4VM_status != 0) {
  printk("URB submission failed\n");
  pWb35Tx->EP4vm_state = VM_STOP;
  goto error;
 }

 Mds_Tx(adapter);
 Wb35Tx(adapter);
 return;

error:
 atomic_dec(&pWb35Tx->TxFireCounter);
 pWb35Tx->EP4vm_state = VM_STOP;
}
