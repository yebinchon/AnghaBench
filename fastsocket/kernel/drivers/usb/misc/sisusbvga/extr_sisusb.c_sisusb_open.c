
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct sisusb_usb_data {int isopen; int lock; int kref; TYPE_1__* sisusb_dev; int devinit; int ready; int present; } ;
struct inode {int dummy; } ;
struct file {struct sisusb_usb_data* private_data; } ;
struct TYPE_2__ {scalar_t__ speed; int dev; } ;


 int EBUSY ;
 int EIO ;
 int ENODEV ;
 scalar_t__ USB_SPEED_HIGH ;
 int dev_err (int *,char*) ;
 int iminor (struct inode*) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sisusb_driver ;
 scalar_t__ sisusb_init_gfxdevice (struct sisusb_usb_data*,int ) ;
 struct usb_interface* usb_find_interface (int *,int) ;
 struct sisusb_usb_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int
sisusb_open(struct inode *inode, struct file *file)
{
 struct sisusb_usb_data *sisusb;
 struct usb_interface *interface;
 int subminor = iminor(inode);

 if (!(interface = usb_find_interface(&sisusb_driver, subminor)))
  return -ENODEV;

 if (!(sisusb = usb_get_intfdata(interface)))
  return -ENODEV;

 mutex_lock(&sisusb->lock);

 if (!sisusb->present || !sisusb->ready) {
  mutex_unlock(&sisusb->lock);
  return -ENODEV;
 }

 if (sisusb->isopen) {
  mutex_unlock(&sisusb->lock);
  return -EBUSY;
 }

 if (!sisusb->devinit) {
  if (sisusb->sisusb_dev->speed == USB_SPEED_HIGH) {
   if (sisusb_init_gfxdevice(sisusb, 0)) {
    mutex_unlock(&sisusb->lock);
    dev_err(&sisusb->sisusb_dev->dev, "Failed to initialize device\n");
    return -EIO;
   }
  } else {
   mutex_unlock(&sisusb->lock);
   dev_err(&sisusb->sisusb_dev->dev, "Device not attached to USB 2.0 hub\n");
   return -EIO;
  }
 }


 kref_get(&sisusb->kref);

 sisusb->isopen = 1;

 file->private_data = sisusb;

 mutex_unlock(&sisusb->lock);

 return 0;
}
