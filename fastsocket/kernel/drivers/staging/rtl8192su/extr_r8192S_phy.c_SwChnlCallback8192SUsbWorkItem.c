
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r8192_priv {void* SwChnlInProgress; int chan; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ bInSetPower; } ;
struct TYPE_4__ {void* SwChnlInProgress; } ;


 int COMP_SCAN ;
 int COMP_TRACE ;
 int DBG_LOUD ;
 void* FALSE ;
 int RT_TRACE (int ,char*,...) ;
 scalar_t__ RT_USB_CANNOT_IO (TYPE_2__*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_2__* pAdapter ;
 TYPE_1__* pHalData ;
 int phy_FinishSwChnlNow (struct net_device*,int ) ;

void SwChnlCallback8192SUsbWorkItem(struct net_device *dev )
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 RT_TRACE(COMP_TRACE, "==> SwChnlCallback8192SUsbWorkItem()\n");
 phy_FinishSwChnlNow(dev, priv->chan);
 priv->SwChnlInProgress = FALSE;

 RT_TRACE(COMP_TRACE, "<== SwChnlCallback8192SUsbWorkItem()\n");
}
