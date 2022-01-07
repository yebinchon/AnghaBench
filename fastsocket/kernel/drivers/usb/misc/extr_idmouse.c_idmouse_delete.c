
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_idmouse {struct usb_idmouse* bulk_in_buffer; } ;


 int kfree (struct usb_idmouse*) ;

__attribute__((used)) static inline void idmouse_delete(struct usb_idmouse *dev)
{
 kfree(dev->bulk_in_buffer);
 kfree(dev);
}
