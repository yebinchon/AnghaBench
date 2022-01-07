
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wireless_dev {int iftype; TYPE_3__* wiphy; struct ieee80211_channel* channel; int mesh_id_len; int beacon_interval; int cac_started; TYPE_2__* current_bss; int ibss_fixed; scalar_t__ netdev; } ;
struct ieee80211_channel {int dummy; } ;
typedef enum cfg80211_chan_mode { ____Placeholder_cfg80211_chan_mode } cfg80211_chan_mode ;
struct TYPE_6__ {int features; } ;
struct TYPE_4__ {struct ieee80211_channel* channel; } ;
struct TYPE_5__ {TYPE_1__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CHAN_MODE_EXCLUSIVE ;
 int CHAN_MODE_SHARED ;
 int CHAN_MODE_UNDEFINED ;
 int NL80211_FEATURE_P2P_DEVICE_NEEDS_CHANNEL ;
 int WARN_ON (int) ;
 int netif_running (scalar_t__) ;

void
cfg80211_get_chan_state(struct wireless_dev *wdev,
          struct ieee80211_channel **chan,
          enum cfg80211_chan_mode *chanmode)
{
 *chan = ((void*)0);
 *chanmode = CHAN_MODE_UNDEFINED;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->netdev && !netif_running(wdev->netdev))
  return;

 switch (wdev->iftype) {
 case 139:
  if (wdev->current_bss) {
   *chan = wdev->current_bss->pub.channel;
   *chanmode = wdev->ibss_fixed
      ? CHAN_MODE_SHARED
      : CHAN_MODE_EXCLUSIVE;
   return;
  }
 case 131:
 case 134:
  if (wdev->current_bss) {
   *chan = wdev->current_bss->pub.channel;
   *chanmode = CHAN_MODE_SHARED;
   return;
  }
  break;
 case 138:
 case 132:
  if (wdev->cac_started) {
   *chan = wdev->channel;
   *chanmode = CHAN_MODE_SHARED;
  } else if (wdev->beacon_interval) {
   *chan = wdev->channel;
   *chanmode = CHAN_MODE_SHARED;
  }
  return;
 case 136:
  if (wdev->mesh_id_len) {
   *chan = wdev->channel;
   *chanmode = CHAN_MODE_SHARED;
  }
  return;
 case 135:
 case 137:
 case 129:

  return;
 case 133:
  if (wdev->wiphy->features &
    NL80211_FEATURE_P2P_DEVICE_NEEDS_CHANNEL)
   *chanmode = CHAN_MODE_EXCLUSIVE;
  return;
 case 130:
 case 128:
  WARN_ON(1);
 }

 return;
}
