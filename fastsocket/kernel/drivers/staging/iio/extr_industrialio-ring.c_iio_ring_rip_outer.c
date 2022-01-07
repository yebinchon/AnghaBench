
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* rip_lots ) (struct iio_ring_buffer*,size_t,int **,int*) ;} ;
struct iio_ring_buffer {TYPE_1__ access; } ;
struct file {struct iio_ring_buffer* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ copy_to_user (char*,int *,int) ;
 int kfree (int *) ;
 int stub1 (struct iio_ring_buffer*,size_t,int **,int*) ;

ssize_t iio_ring_rip_outer(struct file *filp,
      char *buf,
      size_t count,
      loff_t *f_ps)
{
 struct iio_ring_buffer *rb = filp->private_data;
 int ret, dead_offset, copied;
 u8 *data;

 if (!rb->access.rip_lots)
  return -EINVAL;
 copied = rb->access.rip_lots(rb, count, &data, &dead_offset);

 if (copied < 0) {
  ret = copied;
  goto error_ret;
 }
 if (copy_to_user(buf, data + dead_offset, copied)) {
  ret = -EFAULT;
  goto error_free_data_cpy;
 }



 kfree(data);

 return copied;

error_free_data_cpy:
 kfree(data);
error_ret:
 return ret;
}
