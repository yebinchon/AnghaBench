
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ieee80211_device {int dummy; } ;
struct TYPE_11__ {scalar_t__ bValid; } ;
struct TYPE_10__ {TYPE_4__ RxAdmittedBARecord; } ;
struct TYPE_9__ {int Addr; } ;
struct TYPE_8__ {TYPE_4__ TxPendingBARecord; TYPE_4__ TxAdmittedBARecord; } ;
typedef scalar_t__ TR_SELECT ;
typedef TYPE_1__* PTX_TS_RECORD ;
typedef TYPE_2__* PTS_COMMON_INFO ;
typedef TYPE_3__* PRX_TS_RECORD ;


 int DELBA_REASON_END_BA ;
 scalar_t__ RX_DIR ;
 scalar_t__ RxTsDeleteBA (struct ieee80211_device*,TYPE_3__*) ;
 scalar_t__ TX_DIR ;
 scalar_t__ TxTsDeleteBA (struct ieee80211_device*,TYPE_1__*) ;
 int ieee80211_send_DELBA (struct ieee80211_device*,int ,TYPE_4__*,scalar_t__,int ) ;

void
TsInitDelBA( struct ieee80211_device* ieee, PTS_COMMON_INFO pTsCommonInfo, TR_SELECT TxRxSelect)
{

 if(TxRxSelect == TX_DIR)
 {
  PTX_TS_RECORD pTxTs = (PTX_TS_RECORD)pTsCommonInfo;

  if(TxTsDeleteBA(ieee, pTxTs))
   ieee80211_send_DELBA(
    ieee,
    pTsCommonInfo->Addr,
    (pTxTs->TxAdmittedBARecord.bValid)?(&pTxTs->TxAdmittedBARecord):(&pTxTs->TxPendingBARecord),
    TxRxSelect,
    DELBA_REASON_END_BA);
 }
 else if(TxRxSelect == RX_DIR)
 {
  PRX_TS_RECORD pRxTs = (PRX_TS_RECORD)pTsCommonInfo;
  if(RxTsDeleteBA(ieee, pRxTs))
   ieee80211_send_DELBA(
    ieee,
    pTsCommonInfo->Addr,
    &pRxTs->RxAdmittedBARecord,
    TxRxSelect,
    DELBA_REASON_END_BA );
 }
}
