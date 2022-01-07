
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct TYPE_3__ {size_t SlotNum; scalar_t__* RxFrameNum; int NumRxOkInPeriod; int NumTxOkInPeriod; int bBusyTraffic; int SlotIndex; } ;
struct r8180_priv {scalar_t__ eRFPowerState; scalar_t__ PowerProfile; int bLeisurePs; TYPE_2__* ieee80211; TYPE_1__ link_detect; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int actscanning; scalar_t__ iw_mode; scalar_t__ state; int beinretry; scalar_t__ NumRxDataInPeriod; scalar_t__ NumRxBcnInPeriod; int associate_procedure_wq; int wq; } ;


 scalar_t__ IEEE80211_ASSOCIATING ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IEEE80211_NOLINK ;
 int IPSEnter (struct net_device*) ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int LeisurePSEnter (struct r8180_priv*) ;
 int LeisurePSLeave (struct r8180_priv*) ;
 int MgntLinkKeepAlive (struct r8180_priv*) ;
 scalar_t__ POWER_PROFILE_AC ;
 scalar_t__ POWER_PROFILE_BATTERY ;
 scalar_t__ eRfOn ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

void rtl8180_watch_dog(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 bool bEnterPS = 0;
 bool bBusyTraffic = 0;
 u32 TotalRxNum = 0;
 u16 SlotIndex = 0;
 u16 i = 0;
 if(priv->ieee80211->actscanning == 0){
  if((priv->ieee80211->iw_mode != IW_MODE_ADHOC) && (priv->ieee80211->state == IEEE80211_NOLINK) && (priv->ieee80211->beinretry == 0) && (priv->eRFPowerState == eRfOn)){
   IPSEnter(dev);
  }
 }

 if((priv->ieee80211->state == IEEE80211_LINKED) && (priv->ieee80211->iw_mode == IW_MODE_INFRA)){
  SlotIndex = (priv->link_detect.SlotIndex++) % priv->link_detect.SlotNum;
  priv->link_detect.RxFrameNum[SlotIndex] = priv->ieee80211->NumRxDataInPeriod + priv->ieee80211->NumRxBcnInPeriod;
  for( i=0; i<priv->link_detect.SlotNum; i++ )
   TotalRxNum+= priv->link_detect.RxFrameNum[i];

  if(TotalRxNum == 0){
   priv->ieee80211->state = IEEE80211_ASSOCIATING;
   queue_work(priv->ieee80211->wq, &priv->ieee80211->associate_procedure_wq);
  }
 }


 MgntLinkKeepAlive(priv);
 priv->link_detect.bBusyTraffic = bBusyTraffic;
 priv->link_detect.NumRxOkInPeriod = 0;
 priv->link_detect.NumTxOkInPeriod = 0;
 priv->ieee80211->NumRxDataInPeriod = 0;
 priv->ieee80211->NumRxBcnInPeriod = 0;
}
