
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int ieee80211_class ;

int wiphy_sysfs_init(void)
{
 return class_register(&ieee80211_class);
}
