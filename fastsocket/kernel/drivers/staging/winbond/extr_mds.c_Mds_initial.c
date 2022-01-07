
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_mds {int TxPause; int pTxBuffer; int TxFragmentThreshold; int TxRTSThreshold; } ;
struct wbsoft_priv {int sHwData; struct wb35_mds Mds; } ;


 int DEFAULT_FRAGMENT_THRESHOLD ;
 int DEFAULT_RTSThreshold ;
 unsigned char hal_get_tx_buffer (int *,int *) ;

unsigned char
Mds_initial(struct wbsoft_priv * adapter)
{
 struct wb35_mds *pMds = &adapter->Mds;

 pMds->TxPause = 0;
 pMds->TxRTSThreshold = DEFAULT_RTSThreshold;
 pMds->TxFragmentThreshold = DEFAULT_FRAGMENT_THRESHOLD;

 return hal_get_tx_buffer( &adapter->sHwData, &pMds->pTxBuffer );
}
