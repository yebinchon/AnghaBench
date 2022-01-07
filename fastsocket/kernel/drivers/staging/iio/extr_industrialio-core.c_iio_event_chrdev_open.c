
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_cdev; } ;
struct iio_handler {struct iio_event_interface* private; int flags; } ;
struct iio_event_interface {int event_list_lock; } ;
struct file {struct iio_event_interface* private_data; int f_op; } ;


 int EBUSY ;
 int IIO_BUSY_BIT_POS ;
 int fops_put (int ) ;
 struct iio_handler* iio_cdev_to_handler (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int iio_event_chrdev_open(struct inode *inode, struct file *filep)
{
 struct iio_handler *hand = iio_cdev_to_handler(inode->i_cdev);
 struct iio_event_interface *ev_int = hand->private;

 mutex_lock(&ev_int->event_list_lock);
 if (test_and_set_bit(IIO_BUSY_BIT_POS, &hand->flags)) {
  fops_put(filep->f_op);
  mutex_unlock(&ev_int->event_list_lock);
  return -EBUSY;
 }
 filep->private_data = hand->private;
 mutex_unlock(&ev_int->event_list_lock);

 return 0;
}
