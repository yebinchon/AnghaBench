
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;


 int sysfs_remove_group (int ,int *) ;
 int wusbhc_attr_group ;
 int wusbhc_kobj (struct wusbhc*) ;
 int wusbhc_pal_unregister (struct wusbhc*) ;

void wusbhc_b_destroy(struct wusbhc *wusbhc)
{
 wusbhc_pal_unregister(wusbhc);
 sysfs_remove_group(wusbhc_kobj(wusbhc), &wusbhc_attr_group);
}
