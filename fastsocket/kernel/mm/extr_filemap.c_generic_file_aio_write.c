
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int i_sb; int i_mutex; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 scalar_t__ EIOCBQUEUED ;
 scalar_t__ __generic_file_aio_write (struct kiocb*,struct iovec const*,unsigned long,int *) ;
 scalar_t__ generic_write_sync (struct file*,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;

ssize_t generic_file_aio_write(struct kiocb *iocb, const struct iovec *iov,
  unsigned long nr_segs, loff_t pos)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 ssize_t ret;

 BUG_ON(iocb->ki_pos != pos);

 sb_start_write(inode->i_sb);
 mutex_lock(&inode->i_mutex);
 ret = __generic_file_aio_write(iocb, iov, nr_segs, &iocb->ki_pos);
 mutex_unlock(&inode->i_mutex);

 if (ret > 0 || ret == -EIOCBQUEUED) {
  ssize_t err;

  err = generic_write_sync(file, pos, ret);
  if (err < 0 && ret > 0)
   ret = err;
 }
 sb_end_write(inode->i_sb);
 return ret;
}
