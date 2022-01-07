
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_teardown_sdata (int ) ;

__attribute__((used)) static void ieee80211_uninit(struct net_device *dev)
{
 ieee80211_teardown_sdata(IEEE80211_DEV_TO_SUB_IF(dev));
}
