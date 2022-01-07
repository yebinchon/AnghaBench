
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kiocb {int * private; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {scalar_t__ i_size; TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {int * cur_aio_dio; } ;
struct TYPE_5__ {int s_bdev; } ;
struct TYPE_4__ {struct inode* host; } ;


 int EIOCBQUEUED ;
 int ENOMEM ;
 TYPE_3__* EXT4_I (struct inode*) ;
 int EXT4_STATE_DIO_UNWRITTEN ;
 int WRITE ;
 int blockdev_direct_IO (int,struct kiocb*,struct inode*,int ,struct iovec const*,scalar_t__,unsigned long,int ,int ) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_convert_unwritten_extents (struct inode*,scalar_t__,int) ;
 int ext4_end_io_dio ;
 int ext4_free_io_end (int *) ;
 int ext4_get_block_dio_write ;
 int ext4_ind_direct_IO (int,struct kiocb*,struct iovec const*,scalar_t__,unsigned long) ;
 int * ext4_init_io_end (struct inode*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 int is_sync_kiocb (struct kiocb*) ;

__attribute__((used)) static ssize_t ext4_ext_direct_IO(int rw, struct kiocb *iocb,
         const struct iovec *iov, loff_t offset,
         unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 ssize_t ret;
 size_t count = iov_length(iov, nr_segs);

 loff_t final_size = offset + count;
 if (rw == WRITE && final_size <= inode->i_size) {
  iocb->private = ((void*)0);
  EXT4_I(inode)->cur_aio_dio = ((void*)0);
  if (!is_sync_kiocb(iocb)) {
   iocb->private = ext4_init_io_end(inode);
   if (!iocb->private)
    return -ENOMEM;







   EXT4_I(inode)->cur_aio_dio = iocb->private;
  }

  ret = blockdev_direct_IO(rw, iocb, inode,
      inode->i_sb->s_bdev, iov,
      offset, nr_segs,
      ext4_get_block_dio_write,
      ext4_end_io_dio);
  if (iocb->private)
   EXT4_I(inode)->cur_aio_dio = ((void*)0);
  if (ret != -EIOCBQUEUED && ret <= 0 && iocb->private) {
   ext4_free_io_end(iocb->private);
   iocb->private = ((void*)0);
  } else if (ret > 0 && ext4_test_inode_state(inode,
      EXT4_STATE_DIO_UNWRITTEN)) {
   int err;




   err = ext4_convert_unwritten_extents(inode,
            offset, ret);
   if (err < 0)
    ret = err;
   ext4_clear_inode_state(inode, EXT4_STATE_DIO_UNWRITTEN);
  }
  return ret;
 }


 return ext4_ind_direct_IO(rw, iocb, iov, offset, nr_segs);
}
