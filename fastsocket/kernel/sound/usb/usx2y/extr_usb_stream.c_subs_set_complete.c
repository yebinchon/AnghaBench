
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {void (* complete ) (struct urb*) ;} ;


 int USB_STREAM_NURBS ;

__attribute__((used)) static void subs_set_complete(struct urb **urbs, void (*complete)(struct urb *))
{
 int u;

 for (u = 0; u < USB_STREAM_NURBS; u++) {
  struct urb *urb = urbs[u];
  urb->complete = complete;
 }
}
