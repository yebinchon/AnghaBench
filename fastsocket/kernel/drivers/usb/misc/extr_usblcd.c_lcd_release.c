
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_lcd {int kref; int interface; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int ENODEV ;
 int kref_put (int *,int ) ;
 int lcd_delete ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lcd_release(struct inode *inode, struct file *file)
{
 struct usb_lcd *dev;

 dev = (struct usb_lcd *)file->private_data;
 if (dev == ((void*)0))
  return -ENODEV;


 usb_autopm_put_interface(dev->interface);
 kref_put(&dev->kref, lcd_delete);
 return 0;
}
