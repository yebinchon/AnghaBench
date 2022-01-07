
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_tx {int TxFireCounter; int EP4vm_state; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;


 int VM_RUNNING ;
 int Wb35Tx (struct wbsoft_priv*) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;

void Wb35Tx_start(struct wbsoft_priv *adapter)
{
 struct hw_data * pHwData = &adapter->sHwData;
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;


 if (atomic_inc_return(&pWb35Tx->TxFireCounter) == 1) {
  pWb35Tx->EP4vm_state = VM_RUNNING;
  Wb35Tx(adapter);
 } else
  atomic_dec(&pWb35Tx->TxFireCounter);
}
