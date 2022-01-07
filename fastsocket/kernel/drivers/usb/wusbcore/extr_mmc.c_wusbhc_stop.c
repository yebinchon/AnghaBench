
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;


 int wusbhc_devconnect_stop (struct wusbhc*) ;
 int wusbhc_mmc_stop (struct wusbhc*) ;
 int wusbhc_rsv_terminate (struct wusbhc*) ;
 int wusbhc_sec_stop (struct wusbhc*) ;

void wusbhc_stop(struct wusbhc *wusbhc)
{
 wusbhc_mmc_stop(wusbhc);
 wusbhc_sec_stop(wusbhc);
 wusbhc_devconnect_stop(wusbhc);
 wusbhc_rsv_terminate(wusbhc);
}
