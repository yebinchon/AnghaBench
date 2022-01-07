
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int ieee80211_class ;

void wiphy_sysfs_exit(void)
{
 class_unregister(&ieee80211_class);
}
