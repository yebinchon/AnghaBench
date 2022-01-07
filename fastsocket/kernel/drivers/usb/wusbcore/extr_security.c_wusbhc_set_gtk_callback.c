
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int gtk_rekey_done_work; } ;
struct urb {struct wusbhc* context; } ;


 int queue_work (int ,int *) ;
 int wusbd ;

__attribute__((used)) static void wusbhc_set_gtk_callback(struct urb *urb)
{
 struct wusbhc *wusbhc = urb->context;

 queue_work(wusbd, &wusbhc->gtk_rekey_done_work);
}
