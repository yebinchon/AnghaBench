
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_probe_response {int dummy; } ;
struct ieee80211_hdr_4addr {int frame_ctl; } ;
struct ieee80211_device {int dummy; } ;


 int IEEE80211_DEBUG_MGMT (char*,int) ;
 int IEEE80211_DEBUG_SCAN (char*) ;


 int WLAN_FC_GET_STYPE (int ) ;
 int ieee80211_process_probe_response (struct ieee80211_device*,struct ieee80211_probe_response*,struct ieee80211_rx_stats*) ;

void ieee80211_rx_mgt(struct ieee80211_device *ieee,
        struct ieee80211_hdr_4addr *header,
        struct ieee80211_rx_stats *stats)
{
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
