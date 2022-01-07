
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct r8180_priv {TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* bssid; } ;
struct TYPE_5__ {int (* link_change ) (struct net_device*) ;int state; TYPE_1__ current_network; } ;


 int DrvIFIndicateDisassociation (struct net_device*,int ) ;
 int IEEE80211_NOLINK ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_stop_send_beacons (TYPE_2__*) ;
 int notify_wx_assoc_event (TYPE_2__*) ;
 int stub1 (struct net_device*) ;
 int unspec_reason ;

void
MgntDisconnectIBSS(
 struct net_device *dev
)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u8 i;



 DrvIFIndicateDisassociation(dev, unspec_reason);


 for(i=0;i<6;i++) priv->ieee80211->current_network.bssid[i] = 0x55;

 priv->ieee80211->state = IEEE80211_NOLINK;
 ieee80211_stop_send_beacons(priv->ieee80211);

 priv->ieee80211->link_change(dev);
 notify_wx_assoc_event(priv->ieee80211);





}
