
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct wb35_tx {scalar_t__ EP2VM_status; void* EP2vm_state; int TxResultCount; scalar_t__ tx_halt; scalar_t__ EP2_buf; } ;
struct hw_data {scalar_t__ HwStop; scalar_t__ SurpriseRemove; struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct urb {scalar_t__ status; int actual_length; struct wbsoft_priv* context; } ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ T02_DESCRIPTOR ;


 int Mds_SendComplete (struct wbsoft_priv*,TYPE_1__*) ;
 void* VM_COMPLETED ;
 void* VM_STOP ;
 int atomic_dec (int *) ;
 int cpu_to_le32 (int) ;
 int printk (char*) ;

__attribute__((used)) static void Wb35Tx_EP2VM_complete(struct urb * pUrb)
{
 struct wbsoft_priv *adapter = pUrb->context;
 struct hw_data * pHwData = &adapter->sHwData;
 T02_DESCRIPTOR T02, TSTATUS;
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;
 u32 * pltmp = (u32 *)pWb35Tx->EP2_buf;
 u32 i;
 u16 InterruptInLength;



 pWb35Tx->EP2vm_state = VM_COMPLETED;
 pWb35Tx->EP2VM_status = pUrb->status;


 if (pHwData->SurpriseRemove || pHwData->HwStop)
  goto error;

 if (pWb35Tx->tx_halt)
  goto error;


 if (pWb35Tx->EP2VM_status != 0) {
  printk("EP2 IoCompleteRoutine return error\n");
  pWb35Tx->EP2vm_state= VM_STOP;
  goto error;
 }


 InterruptInLength = pUrb->actual_length;

 T02.value = cpu_to_le32(pltmp[0]) >> 8;
 InterruptInLength -= 1;
 InterruptInLength >>= 2;
 for (i = 1; i <= InterruptInLength; i++) {
  T02.value |= ((cpu_to_le32(pltmp[i]) & 0xff) << 24);

  TSTATUS.value = T02.value;
  Mds_SendComplete( adapter, &TSTATUS );
  T02.value = cpu_to_le32(pltmp[i]) >> 8;
 }

 return;
error:
 atomic_dec(&pWb35Tx->TxResultCount);
 pWb35Tx->EP2vm_state = VM_STOP;
}
