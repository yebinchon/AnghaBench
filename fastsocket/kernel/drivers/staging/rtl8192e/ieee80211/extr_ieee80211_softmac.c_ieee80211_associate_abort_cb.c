
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int dummy; } ;


 int ieee80211_associate_abort (struct ieee80211_device*) ;

void ieee80211_associate_abort_cb(unsigned long dev)
{
 ieee80211_associate_abort((struct ieee80211_device *) dev);
}
