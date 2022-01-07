
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_probe_response {int dummy; } ;
struct ieee80211_hdr_4addr {int frame_ctl; } ;
struct ieee80211_device {scalar_t__ ps; scalar_t__ iw_mode; scalar_t__ state; int last_rx_ps_time; int ps_task; scalar_t__ sta_sleep; } ;


 int IEEE80211_DEBUG_MGMT (char*,int) ;
 int IEEE80211_DEBUG_SCAN (char*) ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IEEE80211_PS_DISABLED ;


 scalar_t__ IW_MODE_INFRA ;
 int WLAN_FC_GET_STYPE (int ) ;
 int ieee80211_process_probe_response (struct ieee80211_device*,struct ieee80211_probe_response*,struct ieee80211_rx_stats*) ;
 int jiffies ;
 int tasklet_schedule (int *) ;

void ieee80211_rx_mgt(struct ieee80211_device *ieee,
        struct ieee80211_hdr_4addr *header,
        struct ieee80211_rx_stats *stats)
{
 if(ieee->sta_sleep || (ieee->ps != IEEE80211_PS_DISABLED &&
    ieee->iw_mode == IW_MODE_INFRA &&
    ieee->state == IEEE80211_LINKED))
 {
  tasklet_schedule(&ieee->ps_task);
 }

 if(WLAN_FC_GET_STYPE(header->frame_ctl) != 128 &&
  WLAN_FC_GET_STYPE(header->frame_ctl) != 129)
  ieee->last_rx_ps_time = jiffies;

 switch (WLAN_FC_GET_STYPE(header->frame_ctl)) {

 case 129:
  IEEE80211_DEBUG_MGMT("received BEACON (%d)\n",
         WLAN_FC_GET_STYPE(header->frame_ctl));
  IEEE80211_DEBUG_SCAN("Beacon\n");
  ieee80211_process_probe_response(
   ieee, (struct ieee80211_probe_response *)header, stats);
  break;

 case 128:
  IEEE80211_DEBUG_MGMT("received PROBE RESPONSE (%d)\n",
         WLAN_FC_GET_STYPE(header->frame_ctl));
  IEEE80211_DEBUG_SCAN("Probe response\n");
  ieee80211_process_probe_response(
   ieee, (struct ieee80211_probe_response *)header, stats);
  break;

 }
}
