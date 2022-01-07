
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dev_data* private_data; } ;
struct dev_data {int lock; int state; int * buf; } ;


 int STATE_DEV_DISABLED ;
 int gadgetfs_driver ;
 int kfree (int *) ;
 int put_dev (struct dev_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_gadget_unregister_driver (int *) ;

__attribute__((used)) static int
dev_release (struct inode *inode, struct file *fd)
{
 struct dev_data *dev = fd->private_data;



 usb_gadget_unregister_driver (&gadgetfs_driver);






 kfree (dev->buf);
 dev->buf = ((void*)0);
 put_dev (dev);


 spin_lock_irq(&dev->lock);
 dev->state = STATE_DEV_DISABLED;
 spin_unlock_irq(&dev->lock);
 return 0;
}
