
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {TYPE_3__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int i_sb; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_8__ {int i_aio_mutex; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {int f_flags; TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int EFBIG ;
 TYPE_4__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int O_DIRECT ;
 int ext4_aiodio_wait (struct inode*) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_unaligned_aio (struct inode*,struct iovec const*,unsigned long,scalar_t__) ;
 int generic_file_aio_write (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 unsigned long iov_shorten (struct iovec*,unsigned long,scalar_t__) ;
 int is_sync_kiocb (struct kiocb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t
ext4_file_write(struct kiocb *iocb, const struct iovec *iov,
  unsigned long nr_segs, loff_t pos)
{
 struct inode *inode = iocb->ki_filp->f_path.dentry->d_inode;
 int unaligned_aio = 0;
 ssize_t ret;






 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))) {
  struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
  size_t length = iov_length(iov, nr_segs);

  if ((pos > sbi->s_bitmap_maxbytes ||
      (pos == sbi->s_bitmap_maxbytes && length > 0)))
   return -EFBIG;

  if (pos + length > sbi->s_bitmap_maxbytes) {
   nr_segs = iov_shorten((struct iovec *)iov, nr_segs,
           sbi->s_bitmap_maxbytes - pos);
  }
 } else if (unlikely((iocb->ki_filp->f_flags & O_DIRECT) &&
              !is_sync_kiocb(iocb)))
  unaligned_aio = ext4_unaligned_aio(inode, iov, nr_segs, pos);


 if (unaligned_aio) {
  mutex_lock(&EXT4_I(inode)->i_aio_mutex);
  ext4_aiodio_wait(inode);
  }

 ret = generic_file_aio_write(iocb, iov, nr_segs, pos);

 if (unaligned_aio)
  mutex_unlock(&EXT4_I(inode)->i_aio_mutex);

 return ret;
}
