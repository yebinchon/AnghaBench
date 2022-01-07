
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int kref; int io_mutex; scalar_t__ interface; int open_count; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int ENODEV ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skel_delete ;
 int usb_autopm_put_interface (scalar_t__) ;

__attribute__((used)) static int skel_release(struct inode *inode, struct file *file)
{
 struct usb_skel *dev;

 dev = (struct usb_skel *)file->private_data;
 if (dev == ((void*)0))
  return -ENODEV;


 mutex_lock(&dev->io_mutex);
 if (!--dev->open_count && dev->interface)
  usb_autopm_put_interface(dev->interface);
 mutex_unlock(&dev->io_mutex);


 kref_put(&dev->kref, skel_delete);
 return 0;
}
