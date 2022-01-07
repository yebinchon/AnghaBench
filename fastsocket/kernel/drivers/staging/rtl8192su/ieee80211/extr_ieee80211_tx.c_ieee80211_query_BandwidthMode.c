
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bforced_tx20Mhz; } ;
struct ieee80211_device {TYPE_1__ bandwidth_auto_switch; TYPE_3__* pHTInfo; } ;
struct TYPE_6__ {int bPacketBW; int data_rate; scalar_t__ bBroadcast; scalar_t__ bMulticast; } ;
typedef TYPE_2__ cb_desc ;
struct TYPE_7__ {scalar_t__ bCurTxBW40MHz; scalar_t__ bCurBW40MHz; int bEnableHT; int bCurrentHTSupport; } ;
typedef TYPE_3__* PRT_HIGH_THROUGHPUT ;



void ieee80211_query_BandwidthMode(struct ieee80211_device* ieee, cb_desc *tcb_desc)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 tcb_desc->bPacketBW = 0;

 if(!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
  return;

 if(tcb_desc->bMulticast || tcb_desc->bBroadcast)
  return;

 if((tcb_desc->data_rate & 0x80)==0)
  return;

 if(pHTInfo->bCurBW40MHz && pHTInfo->bCurTxBW40MHz && !ieee->bandwidth_auto_switch.bforced_tx20Mhz)
  tcb_desc->bPacketBW = 1;
 return;
}
