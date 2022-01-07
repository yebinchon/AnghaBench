
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int pal; } ;


 int uwb_pal_unregister (int *) ;

void wusbhc_pal_unregister(struct wusbhc *wusbhc)
{
 uwb_pal_unregister(&wusbhc->pal);
}
