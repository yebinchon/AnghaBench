
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int dfs_update_channels_wk; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int gfp_t ;


 int IEEE80211_DFS_MIN_NOP_TIME_MS ;
 int NL80211_DFS_UNAVAILABLE ;
 int NL80211_RADAR_DETECTED ;
 int cfg80211_set_dfs_state (struct wiphy*,struct cfg80211_chan_def*,int ) ;
 int cfg80211_wq ;
 unsigned long msecs_to_jiffies (int ) ;
 int nl80211_radar_notify (struct cfg80211_registered_device*,struct cfg80211_chan_def*,int ,int *,int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int trace_cfg80211_radar_event (struct wiphy*,struct cfg80211_chan_def*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_radar_event(struct wiphy *wiphy,
     struct cfg80211_chan_def *chandef,
     gfp_t gfp)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 unsigned long timeout;

 trace_cfg80211_radar_event(wiphy, chandef);





 cfg80211_set_dfs_state(wiphy, chandef, NL80211_DFS_UNAVAILABLE);

 timeout = msecs_to_jiffies(IEEE80211_DFS_MIN_NOP_TIME_MS);
 queue_delayed_work(cfg80211_wq, &rdev->dfs_update_channels_wk,
      timeout);

 nl80211_radar_notify(rdev, chandef, NL80211_RADAR_DETECTED, ((void*)0), gfp);
}
