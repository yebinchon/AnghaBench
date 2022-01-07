
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int reset_ws; } ;


 int schedule_work (int *) ;

void usb_queue_reset_device(struct usb_interface *iface)
{
 schedule_work(&iface->reset_ws);
}
