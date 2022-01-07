
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int gtk_rekey_done_work; } ;


 int cancel_work_sync (int *) ;

void wusbhc_sec_stop(struct wusbhc *wusbhc)
{
 cancel_work_sync(&wusbhc->gtk_rekey_done_work);
}
