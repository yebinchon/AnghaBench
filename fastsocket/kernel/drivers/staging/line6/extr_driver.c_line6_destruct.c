
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int urb_listen; struct usb_line6* buffer_listen; struct usb_line6* buffer_message; } ;
struct usb_interface {int dummy; } ;


 int kfree (struct usb_line6*) ;
 int usb_free_urb (int ) ;
 struct usb_line6* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void line6_destruct(struct usb_interface *interface)
{
 struct usb_line6 *line6;

 if (interface == ((void*)0))
  return;
 line6 = usb_get_intfdata(interface);
 if (line6 == ((void*)0))
  return;


 kfree(line6->buffer_message);
 kfree(line6->buffer_listen);


 usb_free_urb(line6->urb_listen);


 usb_set_intfdata(interface, ((void*)0));


 kfree(line6);
}
