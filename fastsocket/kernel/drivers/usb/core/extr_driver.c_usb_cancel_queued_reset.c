
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {scalar_t__ reset_running; int reset_ws; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static void usb_cancel_queued_reset(struct usb_interface *iface)
{
 if (iface->reset_running == 0)
  cancel_work_sync(&iface->reset_ws);
}
