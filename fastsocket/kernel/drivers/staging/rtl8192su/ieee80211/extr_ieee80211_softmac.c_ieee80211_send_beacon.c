
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ beacon_interval; } ;
struct TYPE_3__ {int tx_beacons; } ;
struct ieee80211_device {TYPE_2__ current_network; int beacon_timer; scalar_t__ ieee_up; scalar_t__ beacon_txing; TYPE_1__ softmac_stats; } ;


 scalar_t__ MSECS (scalar_t__) ;
 struct sk_buff* ieee80211_get_beacon_ (struct ieee80211_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;

void ieee80211_send_beacon(struct ieee80211_device *ieee)
{
 struct sk_buff *skb;
 if(!ieee->ieee_up)
  return;

 skb = ieee80211_get_beacon_(ieee);

 if (skb){
  softmac_mgmt_xmit(skb, ieee);
  ieee->softmac_stats.tx_beacons++;

 }




 if(ieee->beacon_txing && ieee->ieee_up){


  mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
 }

}
