
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;


 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static void cxacru_timeout_kill(unsigned long data)
{
 usb_unlink_urb((struct urb *) data);
}
