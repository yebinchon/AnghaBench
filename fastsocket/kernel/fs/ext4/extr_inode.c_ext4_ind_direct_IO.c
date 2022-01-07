
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_nlink; TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ext4_inode_info {scalar_t__ i_disksize; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;
struct TYPE_4__ {int s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ENOSPC ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int WRITE ;
 int blockdev_direct_IO (int,struct kiocb*,struct inode*,int ,struct iovec const*,scalar_t__,unsigned long,int ,int *) ;
 int ext4_get_block ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (TYPE_2__*,int*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 size_t iov_length (struct iovec const*,unsigned long) ;

__attribute__((used)) static ssize_t ext4_ind_direct_IO(int rw, struct kiocb *iocb,
         const struct iovec *iov, loff_t offset,
         unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 struct ext4_inode_info *ei = EXT4_I(inode);
 handle_t *handle;
 ssize_t ret;
 int orphan = 0;
 size_t count = iov_length(iov, nr_segs);
 int retries = 0;

 if (rw == WRITE) {
  loff_t final_size = offset + count;

  if (final_size > inode->i_size) {

   handle = ext4_journal_start(inode, 2);
   if (IS_ERR(handle)) {
    ret = PTR_ERR(handle);
    goto out;
   }
   ret = ext4_orphan_add(handle, inode);
   if (ret) {
    ext4_journal_stop(handle);
    goto out;
   }
   orphan = 1;
   ei->i_disksize = inode->i_size;
   ext4_journal_stop(handle);
  }
 }

retry:
 ret = blockdev_direct_IO(rw, iocb, inode, inode->i_sb->s_bdev, iov,
     offset, nr_segs,
     ext4_get_block, ((void*)0));
 if (ret == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry;

 if (orphan) {
  int err;


  handle = ext4_journal_start(inode, 2);
  if (IS_ERR(handle)) {



   ret = PTR_ERR(handle);
   if (inode->i_nlink)
    ext4_orphan_del(((void*)0), inode);

   goto out;
  }
  if (inode->i_nlink)
   ext4_orphan_del(handle, inode);
  if (ret > 0) {
   loff_t end = offset + ret;
   if (end > inode->i_size) {
    ei->i_disksize = end;
    i_size_write(inode, end);







    ext4_mark_inode_dirty(handle, inode);
   }
  }
  err = ext4_journal_stop(handle);
  if (ret == 0)
   ret = err;
 }
out:
 return ret;
}
