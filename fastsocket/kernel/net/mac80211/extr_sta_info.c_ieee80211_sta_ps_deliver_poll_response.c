
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int uapsd_queues; } ;
struct sta_info {TYPE_1__ sta; } ;


 int BIT (int ) ;
 int IEEE80211_FRAME_RELEASE_PSPOLL ;
 int IEEE80211_NUM_ACS ;
 int ieee80211_sta_ps_deliver_response (struct sta_info*,int,int,int ) ;

void ieee80211_sta_ps_deliver_poll_response(struct sta_info *sta)
{
 u8 ignore_for_response = sta->sta.uapsd_queues;






 if (ignore_for_response == BIT(IEEE80211_NUM_ACS) - 1)
  ignore_for_response = 0;

 ieee80211_sta_ps_deliver_response(sta, 1, ignore_for_response,
       IEEE80211_FRAME_RELEASE_PSPOLL);
}
