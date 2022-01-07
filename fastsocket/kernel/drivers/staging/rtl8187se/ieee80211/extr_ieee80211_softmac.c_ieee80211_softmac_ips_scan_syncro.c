
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int channel; } ;
struct ieee80211_device {scalar_t__ state; int actscanning; int scan_sem; TYPE_1__ current_network; int dev; int (* set_chan ) (int ,size_t) ;} ;
struct TYPE_4__ {int channel_map; } ;


 int DOT11D_ScanComplete (struct ieee80211_device*) ;
 TYPE_2__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 scalar_t__ IEEE80211_LINKED ;
 int IEEE80211_SOFTMAC_SCAN_TIME ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 int MAX_CHANNEL_NUMBER ;
 int down (int *) ;
 int ieee80211_send_probe_requests (struct ieee80211_device*) ;
 int memcpy (int*,int ,int) ;
 int msleep_interruptible_rtl (int ) ;
 int stub1 (int ,size_t) ;
 int up (int *) ;

void ieee80211_softmac_ips_scan_syncro(struct ieee80211_device *ieee)
{
 int ch;
        unsigned int watch_dog = 0;
 u8 channel_map[MAX_CHANNEL_NUMBER+1];
 memcpy(channel_map, GET_DOT11D_INFO(ieee)->channel_map, MAX_CHANNEL_NUMBER+1);
        down(&ieee->scan_sem);
 ch = ieee->current_network.channel;







      while(1)
        {
  if (ieee->state == IEEE80211_LINKED)
  {
   goto out;
  }
  if(channel_map[ieee->current_network.channel] > 0)
  {
   ieee->set_chan(ieee->dev, ieee->current_network.channel);

  }
  if(channel_map[ieee->current_network.channel] == 1)
  {

   ieee80211_send_probe_requests(ieee);
                }






  msleep_interruptible_rtl(IEEE80211_SOFTMAC_SCAN_TIME);

  do{
   if (watch_dog++ >= MAX_CHANNEL_NUMBER)

    goto out;

   ieee->current_network.channel = (ieee->current_network.channel + 1)%MAX_CHANNEL_NUMBER;
  }while(!channel_map[ieee->current_network.channel]);
        }
out:



 ieee->actscanning = 0;
 up(&ieee->scan_sem);
 if(IS_DOT11D_ENABLE(ieee))
  DOT11D_ScanComplete(ieee);
}
