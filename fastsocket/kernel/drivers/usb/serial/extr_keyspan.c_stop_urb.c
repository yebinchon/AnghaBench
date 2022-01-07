
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; } ;


 int EINPROGRESS ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static inline void stop_urb(struct urb *urb)
{
 if (urb && urb->status == -EINPROGRESS)
  usb_kill_urb(urb);
}
