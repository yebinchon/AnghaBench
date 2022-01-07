
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ bValid; } ;
struct TYPE_5__ {TYPE_2__ TxPendingBARecord; TYPE_2__ TxAdmittedBARecord; } ;
typedef TYPE_1__* PTX_TS_RECORD ;
typedef TYPE_2__* PBA_RECORD ;


 int DeActivateBAEntry (struct ieee80211_device*,TYPE_2__*) ;

u8 TxTsDeleteBA( struct ieee80211_device* ieee, PTX_TS_RECORD pTxTs)
{
 PBA_RECORD pAdmittedBa = &pTxTs->TxAdmittedBARecord;
 PBA_RECORD pPendingBa = &pTxTs->TxPendingBARecord;
 u8 bSendDELBA = 0;


 if(pPendingBa->bValid)
 {
  DeActivateBAEntry(ieee, pPendingBa);
  bSendDELBA = 1;
 }


 if(pAdmittedBa->bValid)
 {
  DeActivateBAEntry(ieee, pAdmittedBa);
  bSendDELBA = 1;
 }

 return bSendDELBA;
}
