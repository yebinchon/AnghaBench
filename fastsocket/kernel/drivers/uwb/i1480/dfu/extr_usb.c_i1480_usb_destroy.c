
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480_usb {int usb_dev; int usb_iface; int neep_urb; } ;


 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;
 int usb_put_dev (int ) ;
 int usb_put_intf (int ) ;
 int usb_set_intfdata (int ,int *) ;

__attribute__((used)) static
void i1480_usb_destroy(struct i1480_usb *i1480_usb)
{
 usb_kill_urb(i1480_usb->neep_urb);
 usb_free_urb(i1480_usb->neep_urb);
 usb_set_intfdata(i1480_usb->usb_iface, ((void*)0));
 usb_put_intf(i1480_usb->usb_iface);
 usb_put_dev(i1480_usb->usb_dev);
}
