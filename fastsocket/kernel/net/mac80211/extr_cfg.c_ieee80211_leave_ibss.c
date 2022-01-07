
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;


 int IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_ibss_leave (int ) ;

__attribute__((used)) static int ieee80211_leave_ibss(struct wiphy *wiphy, struct net_device *dev)
{
 return ieee80211_ibss_leave(IEEE80211_DEV_TO_SUB_IF(dev));
}
