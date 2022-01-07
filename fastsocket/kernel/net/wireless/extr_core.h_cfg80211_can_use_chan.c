
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef enum cfg80211_chan_mode { ____Placeholder_cfg80211_chan_mode } cfg80211_chan_mode ;


 int cfg80211_can_use_iftype_chan (struct cfg80211_registered_device*,struct wireless_dev*,int ,struct ieee80211_channel*,int,int ) ;

__attribute__((used)) static inline int
cfg80211_can_use_chan(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev,
        struct ieee80211_channel *chan,
        enum cfg80211_chan_mode chanmode)
{
 return cfg80211_can_use_iftype_chan(rdev, wdev, wdev->iftype,
         chan, chanmode, 0);
}
