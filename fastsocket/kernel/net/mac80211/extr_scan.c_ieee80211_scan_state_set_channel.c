
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {size_t scan_channel_idx; void* next_scan_state; TYPE_1__* scan_req; struct ieee80211_channel* scan_channel; } ;
struct ieee80211_channel {int flags; } ;
struct TYPE_2__ {int n_ssids; struct ieee80211_channel** channels; } ;


 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 unsigned long IEEE80211_PASSIVE_CHANNEL_TIME ;
 unsigned long IEEE80211_PROBE_DELAY ;
 void* SCAN_DECISION ;
 void* SCAN_SEND_PROBE ;
 scalar_t__ ieee80211_hw_config (struct ieee80211_local*,int ) ;

__attribute__((used)) static void ieee80211_scan_state_set_channel(struct ieee80211_local *local,
          unsigned long *next_delay)
{
 int skip;
 struct ieee80211_channel *chan;

 skip = 0;
 chan = local->scan_req->channels[local->scan_channel_idx];

 local->scan_channel = chan;

 if (ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_CHANNEL))
  skip = 1;


 local->scan_channel_idx++;

 if (skip) {

  local->next_scan_state = SCAN_DECISION;
  return;
 }
 if (chan->flags & IEEE80211_CHAN_PASSIVE_SCAN ||
     !local->scan_req->n_ssids) {
  *next_delay = IEEE80211_PASSIVE_CHANNEL_TIME;
  local->next_scan_state = SCAN_DECISION;
  return;
 }


 *next_delay = IEEE80211_PROBE_DELAY;
 local->next_scan_state = SCAN_SEND_PROBE;
}
