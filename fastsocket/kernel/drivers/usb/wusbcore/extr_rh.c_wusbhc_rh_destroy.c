
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int port; } ;


 int kfree (int ) ;

void wusbhc_rh_destroy(struct wusbhc *wusbhc)
{
 kfree(wusbhc->port);
}
