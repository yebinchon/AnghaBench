
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int cfg80211_can_change_interface (struct cfg80211_registered_device*,int *,int) ;

__attribute__((used)) static inline int
cfg80211_can_add_interface(struct cfg80211_registered_device *rdev,
      enum nl80211_iftype iftype)
{
 return cfg80211_can_change_interface(rdev, ((void*)0), iftype);
}
