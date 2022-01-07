
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int * rsv; } ;


 int uwb_rsv_destroy (int *) ;
 int uwb_rsv_terminate (int *) ;

void wusbhc_rsv_terminate(struct wusbhc *wusbhc)
{
 if (wusbhc->rsv) {
  uwb_rsv_terminate(wusbhc->rsv);
  uwb_rsv_destroy(wusbhc->rsv);
  wusbhc->rsv = ((void*)0);
 }
}
