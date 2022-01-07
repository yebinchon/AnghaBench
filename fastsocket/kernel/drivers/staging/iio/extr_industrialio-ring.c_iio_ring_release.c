
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {struct cdev* i_cdev; } ;
struct TYPE_4__ {int (* unmark_in_use ) (struct iio_ring_buffer*) ;} ;
struct TYPE_3__ {int flags; } ;
struct iio_ring_buffer {TYPE_2__ access; TYPE_1__ access_handler; } ;
struct iio_handler {struct iio_ring_buffer* private; } ;
struct file {int dummy; } ;
struct cdev {int dummy; } ;


 int IIO_BUSY_BIT_POS ;
 int clear_bit (int ,int *) ;
 struct iio_handler* iio_cdev_to_handler (struct cdev*) ;
 int stub1 (struct iio_ring_buffer*) ;

int iio_ring_release(struct inode *inode, struct file *filp)
{
 struct cdev *cd = inode->i_cdev;
 struct iio_handler *hand = iio_cdev_to_handler(cd);
 struct iio_ring_buffer *rb = hand->private;

 clear_bit(IIO_BUSY_BIT_POS, &rb->access_handler.flags);
 if (rb->access.unmark_in_use)
  rb->access.unmark_in_use(rb);

 return 0;
}
