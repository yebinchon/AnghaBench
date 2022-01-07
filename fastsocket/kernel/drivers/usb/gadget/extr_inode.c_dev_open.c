
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct dev_data* i_private; } ;
struct file {struct dev_data* private_data; } ;
struct dev_data {scalar_t__ state; int lock; scalar_t__ ev_next; } ;


 int EBUSY ;
 scalar_t__ STATE_DEV_DISABLED ;
 scalar_t__ STATE_DEV_OPENED ;
 int get_dev (struct dev_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
dev_open (struct inode *inode, struct file *fd)
{
 struct dev_data *dev = inode->i_private;
 int value = -EBUSY;

 spin_lock_irq(&dev->lock);
 if (dev->state == STATE_DEV_DISABLED) {
  dev->ev_next = 0;
  dev->state = STATE_DEV_OPENED;
  fd->private_data = dev;
  get_dev (dev);
  value = 0;
 }
 spin_unlock_irq(&dev->lock);
 return value;
}
