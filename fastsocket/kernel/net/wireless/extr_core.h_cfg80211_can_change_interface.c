
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int CHAN_MODE_UNDEFINED ;
 int cfg80211_can_use_iftype_chan (struct cfg80211_registered_device*,struct wireless_dev*,int,int *,int ,int ) ;

__attribute__((used)) static inline int
cfg80211_can_change_interface(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev,
         enum nl80211_iftype iftype)
{
 return cfg80211_can_use_iftype_chan(rdev, wdev, iftype, ((void*)0),
         CHAN_MODE_UNDEFINED, 0);
}
