
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ bValid; } ;
struct TYPE_5__ {TYPE_2__ RxAdmittedBARecord; } ;
typedef TYPE_1__* PRX_TS_RECORD ;
typedef TYPE_2__* PBA_RECORD ;


 int DeActivateBAEntry (struct ieee80211_device*,TYPE_2__*) ;

u8 RxTsDeleteBA( struct ieee80211_device* ieee, PRX_TS_RECORD pRxTs)
{
 PBA_RECORD pBa = &pRxTs->RxAdmittedBARecord;
 u8 bSendDELBA = 0;

 if(pBa->bValid)
 {
  DeActivateBAEntry(ieee, pBa);
  bSendDELBA = 1;
 }

 return bSendDELBA;
}
