
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_usb {int interrupt_out_urb; scalar_t__ intf; scalar_t__ interrupt_out_busy; int interrupt_in_urb; scalar_t__ interrupt_in_running; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void ld_usb_abort_transfers(struct ld_usb *dev)
{

 if (dev->interrupt_in_running) {
  dev->interrupt_in_running = 0;
  if (dev->intf)
   usb_kill_urb(dev->interrupt_in_urb);
 }
 if (dev->interrupt_out_busy)
  if (dev->intf)
   usb_kill_urb(dev->interrupt_out_urb);
}
