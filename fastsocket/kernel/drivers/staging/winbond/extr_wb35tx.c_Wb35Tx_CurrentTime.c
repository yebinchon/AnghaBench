
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wb35_tx {scalar_t__ TxTimer; } ;
struct hw_data {struct wb35_tx Wb35Tx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;


 int Wb35Tx_EP2VM_start (struct wbsoft_priv*) ;

void Wb35Tx_CurrentTime(struct wbsoft_priv *adapter, u32 TimeCount)
{
 struct hw_data * pHwData = &adapter->sHwData;
 struct wb35_tx *pWb35Tx = &pHwData->Wb35Tx;
 unsigned char Trigger = 0;

 if (pWb35Tx->TxTimer > TimeCount)
  Trigger = 1;
 else if (TimeCount > (pWb35Tx->TxTimer+500))
  Trigger = 1;

 if (Trigger) {
  pWb35Tx->TxTimer = TimeCount;
  Wb35Tx_EP2VM_start(adapter);
 }
}
