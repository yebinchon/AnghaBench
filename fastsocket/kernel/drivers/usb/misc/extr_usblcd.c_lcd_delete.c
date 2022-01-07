
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_lcd {struct usb_lcd* bulk_in_buffer; int udev; } ;
struct kref {int dummy; } ;


 int kfree (struct usb_lcd*) ;
 struct usb_lcd* to_lcd_dev (struct kref*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void lcd_delete(struct kref *kref)
{
 struct usb_lcd *dev = to_lcd_dev(kref);

 usb_put_dev(dev->udev);
 kfree (dev->bulk_in_buffer);
 kfree (dev);
}
