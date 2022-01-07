
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ssid_len; int channel; int bssid; int ssid; } ;
struct ieee80211_device {int assoc_id; int ssid_set; TYPE_2__* dev; int (* data_hard_resume ) (TYPE_2__*) ;int (* link_change ) (TYPE_2__*) ;int state; TYPE_1__ current_network; int (* set_chan ) (TYPE_2__*,int ) ;} ;
struct TYPE_7__ {int dev_addr; } ;


 int ETH_ALEN ;
 int IEEE80211_DEFAULT_TX_ESSID ;
 int IEEE80211_LINKED ;
 int IW_ESSID_MAX_SIZE ;
 int memcpy (int ,int ,int ) ;
 int netif_carrier_on (TYPE_2__*) ;
 int notify_wx_assoc_event (struct ieee80211_device*) ;
 scalar_t__ strlen (int ) ;
 int strncpy (int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

void ieee80211_start_master_bss(struct ieee80211_device *ieee)
{
 ieee->assoc_id = 1;

 if (ieee->current_network.ssid_len == 0){
  strncpy(ieee->current_network.ssid,
   IEEE80211_DEFAULT_TX_ESSID,
   IW_ESSID_MAX_SIZE);

  ieee->current_network.ssid_len = strlen(IEEE80211_DEFAULT_TX_ESSID);
  ieee->ssid_set = 1;
 }

 memcpy(ieee->current_network.bssid, ieee->dev->dev_addr, ETH_ALEN);

 ieee->set_chan(ieee->dev, ieee->current_network.channel);
 ieee->state = IEEE80211_LINKED;
 ieee->link_change(ieee->dev);
 notify_wx_assoc_event(ieee);

 if (ieee->data_hard_resume)
  ieee->data_hard_resume(ieee->dev);

 netif_carrier_on(ieee->dev);
}
