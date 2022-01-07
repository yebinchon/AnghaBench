
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {scalar_t__ state; int scan_sem; scalar_t__ sync_scan_hurryup; int dev; int (* set_chan ) (int ,short) ;} ;
struct TYPE_2__ {int channel_map; } ;


 int DOT11D_ScanComplete (struct ieee80211_device*) ;
 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 scalar_t__ IEEE80211_LINKED ;
 int IEEE80211_SOFTMAC_SCAN_TIME ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 int MAX_CHANNEL_NUMBER ;
 int down (int *) ;
 int ieee80211_send_probe_requests (struct ieee80211_device*) ;
 int memcpy (int*,int ,int) ;
 int msleep_interruptible_rtl (int ) ;
 int stub1 (int ,short) ;
 int up (int *) ;

void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
{
 short ch = 0;
 u8 channel_map[MAX_CHANNEL_NUMBER+1];
 memcpy(channel_map, GET_DOT11D_INFO(ieee)->channel_map, MAX_CHANNEL_NUMBER+1);
 down(&ieee->scan_sem);


 while(1)
 {

  do{
   ch++;
   if (ch > MAX_CHANNEL_NUMBER)
    goto out;

  }while(!channel_map[ch]);
  if (ieee->state == IEEE80211_LINKED)
   goto out;

  ieee->set_chan(ieee->dev, ch);

  if(channel_map[ch] == 1)
  {

   ieee80211_send_probe_requests(ieee);
  }



  if (ieee->sync_scan_hurryup)
   goto out;


  msleep_interruptible_rtl(IEEE80211_SOFTMAC_SCAN_TIME);

 }
out:
 ieee->sync_scan_hurryup = 0;
 up(&ieee->scan_sem);
 if(IS_DOT11D_ENABLE(ieee))
  DOT11D_ScanComplete(ieee);
}
