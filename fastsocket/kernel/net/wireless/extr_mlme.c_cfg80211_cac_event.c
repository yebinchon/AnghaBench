
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int cac_started; unsigned long cac_start_time; int channel; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int gfp_t ;
typedef enum nl80211_radar_event { ____Placeholder_nl80211_radar_event } nl80211_radar_event ;


 int IEEE80211_DFS_MIN_CAC_TIME_MS ;
 int NL80211_CHAN_NO_HT ;
 int NL80211_DFS_AVAILABLE ;


 scalar_t__ WARN_ON (int) ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,int ,int ) ;
 int cfg80211_set_dfs_state (struct wiphy*,struct cfg80211_chan_def*,int ) ;
 int jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int nl80211_radar_notify (struct cfg80211_registered_device*,struct cfg80211_chan_def*,int,struct net_device*,int ) ;
 int time_after_eq (int ,unsigned long) ;
 int trace_cfg80211_cac_event (struct net_device*,int) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_cac_event(struct net_device *netdev,
   enum nl80211_radar_event event, gfp_t gfp)
{
 struct wireless_dev *wdev = netdev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 struct cfg80211_chan_def chandef;
 unsigned long timeout;

 trace_cfg80211_cac_event(netdev, event);

 if (WARN_ON(!wdev->cac_started))
  return;

 if (WARN_ON(!wdev->channel))
  return;

 cfg80211_chandef_create(&chandef, wdev->channel, NL80211_CHAN_NO_HT);

 switch (event) {
 case 128:
  timeout = wdev->cac_start_time +
     msecs_to_jiffies(IEEE80211_DFS_MIN_CAC_TIME_MS);
  WARN_ON(!time_after_eq(jiffies, timeout));
  cfg80211_set_dfs_state(wiphy, &chandef, NL80211_DFS_AVAILABLE);
  break;
 case 129:
  break;
 default:
  WARN_ON(1);
  return;
 }
 wdev->cac_started = 0;

 nl80211_radar_notify(rdev, &chandef, event, netdev, gfp);
}
