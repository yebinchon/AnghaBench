
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct r8192_priv {TYPE_3__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct TYPE_6__ {TYPE_1__* pHTInfo; TYPE_2__ current_network; } ;
struct TYPE_4__ {int bCurSuppCCK; } ;


 int DMESG (char*) ;
 scalar_t__ IEEE_A ;
 scalar_t__ IEEE_N_24G ;
 scalar_t__ IEEE_N_5G ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u16 tx_rate;
 {



  if((priv->ieee80211->current_network.mode == IEEE_A) ||
   (priv->ieee80211->current_network.mode == IEEE_N_5G) ||
   ((priv->ieee80211->current_network.mode == IEEE_N_24G) && (!priv->ieee80211->pHTInfo->bCurSuppCCK)))
  {
   tx_rate = 60;
   DMESG("send beacon frame  tx rate is 6Mbpm\n");
  }
  else
  {
   tx_rate =10;
   DMESG("send beacon frame  tx rate is 1Mbpm\n");
  }



 }

}
