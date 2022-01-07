
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 scalar_t__ EIOCBQUEUED ;
 scalar_t__ __generic_file_aio_write (struct kiocb*,struct iovec const*,unsigned long,int *) ;
 scalar_t__ generic_write_sync (struct file*,int ,scalar_t__) ;

ssize_t blkdev_aio_write(struct kiocb *iocb, const struct iovec *iov,
    unsigned long nr_segs, loff_t pos)
{
 struct file *file = iocb->ki_filp;
 ssize_t ret;

 BUG_ON(iocb->ki_pos != pos);
 ret = __generic_file_aio_write(iocb, iov, nr_segs, &iocb->ki_pos);
 if (ret > 0 || ret == -EIOCBQUEUED) {
  ssize_t err;

  err = generic_write_sync(file, pos, ret);
  if (err < 0 && ret > 0)
   ret = err;
 }
 return ret;
}
