
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* TxMMPDUInUse; int * TxMMPDU; } ;
struct wbsoft_priv {TYPE_1__ sMlmeFrame; } ;
typedef int s8 ;


 int MAX_NUM_TX_MMPDU ;

__attribute__((used)) static void MLMEfreeMMPDUBuffer(struct wbsoft_priv *adapter, s8 *pData)
{
 int i;


 for (i = 0; i < MAX_NUM_TX_MMPDU; i++) {
  if (pData == (s8 *)&(adapter->sMlmeFrame.TxMMPDU[i]))
   break;
 }
 if (adapter->sMlmeFrame.TxMMPDUInUse[i])
  adapter->sMlmeFrame.TxMMPDUInUse[i] = 0;
 else {


 }
}
