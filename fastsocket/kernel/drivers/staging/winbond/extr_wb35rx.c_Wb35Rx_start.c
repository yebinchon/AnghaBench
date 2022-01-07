
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_rx {int RxFireCounter; int EP3vm_state; } ;
struct hw_data {struct wb35_rx Wb35Rx; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;


 int VM_RUNNING ;
 int Wb35Rx (struct ieee80211_hw*) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;

void Wb35Rx_start(struct ieee80211_hw *hw)
{
 struct wbsoft_priv *priv = hw->priv;
 struct hw_data * pHwData = &priv->sHwData;
 struct wb35_rx *pWb35Rx = &pHwData->Wb35Rx;


 if (atomic_inc_return(&pWb35Rx->RxFireCounter) == 1) {
  pWb35Rx->EP3vm_state = VM_RUNNING;
  Wb35Rx(hw);
 } else
  atomic_dec(&pWb35Rx->RxFireCounter);
}
