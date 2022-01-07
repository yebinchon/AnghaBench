
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; int * usb_dev; } ;
struct usb_class_driver {int minor_base; char* name; } ;
typedef int name ;
struct TYPE_2__ {int class; } ;


 int MKDEV (int ,size_t) ;
 int USB_MAJOR ;
 int dbg (char*,int) ;
 int destroy_usb_class () ;
 int device_destroy (int ,int ) ;
 int down_write (int *) ;
 int minor_rwsem ;
 int snprintf (char*,int,char*,size_t) ;
 int up_write (int *) ;
 TYPE_1__* usb_class ;
 int ** usb_minors ;

void usb_deregister_dev(struct usb_interface *intf,
   struct usb_class_driver *class_driver)
{
 int minor_base = class_driver->minor_base;
 char name[20];





 if (intf->minor == -1)
  return;

 dbg ("removing %d minor", intf->minor);

 down_write(&minor_rwsem);
 usb_minors[intf->minor] = ((void*)0);
 up_write(&minor_rwsem);

 snprintf(name, sizeof(name), class_driver->name, intf->minor - minor_base);
 device_destroy(usb_class->class, MKDEV(USB_MAJOR, intf->minor));
 intf->usb_dev = ((void*)0);
 intf->minor = -1;
 destroy_usb_class();
}
