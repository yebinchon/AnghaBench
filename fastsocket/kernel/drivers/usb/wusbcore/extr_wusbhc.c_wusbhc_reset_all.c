
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int uwb_rc; } ;


 int uwb_rc_reset_all (int ) ;

void wusbhc_reset_all(struct wusbhc *wusbhc)
{
 uwb_rc_reset_all(wusbhc->uwb_rc);
}
