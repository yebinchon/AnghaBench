
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_idmouse {int lock; scalar_t__ open; } ;
struct inode {int dummy; } ;
struct file {struct usb_idmouse* private_data; } ;


 int EBUSY ;
 int ENODEV ;
 int idmouse_create_image (struct usb_idmouse*) ;
 int idmouse_driver ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_disc_mutex ;
 int usb_autopm_get_interface (struct usb_interface*) ;
 int usb_autopm_put_interface (struct usb_interface*) ;
 struct usb_interface* usb_find_interface (int *,int ) ;
 struct usb_idmouse* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int idmouse_open(struct inode *inode, struct file *file)
{
 struct usb_idmouse *dev;
 struct usb_interface *interface;
 int result;


 interface = usb_find_interface (&idmouse_driver, iminor (inode));
 if (!interface)
  return -ENODEV;

 mutex_lock(&open_disc_mutex);

 dev = usb_get_intfdata(interface);
 if (!dev) {
  mutex_unlock(&open_disc_mutex);
  return -ENODEV;
 }


 mutex_lock(&dev->lock);
 mutex_unlock(&open_disc_mutex);


 if (dev->open) {


  result = -EBUSY;

 } else {


  result = usb_autopm_get_interface(interface);
  if (result)
   goto error;
  result = idmouse_create_image (dev);
  if (result)
   goto error;
  usb_autopm_put_interface(interface);


  ++dev->open;


  file->private_data = dev;

 }

error:


 mutex_unlock(&dev->lock);
 return result;
}
