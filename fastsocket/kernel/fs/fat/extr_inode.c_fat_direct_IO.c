
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ mmu_private; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {int s_bdev; } ;


 TYPE_3__* MSDOS_I (struct inode*) ;
 int WRITE ;
 int blockdev_direct_IO (int,struct kiocb*,struct inode*,int ,struct iovec const*,scalar_t__,unsigned long,int ,int *) ;
 int fat_get_block ;
 scalar_t__ iov_length (struct iovec const*,unsigned long) ;

__attribute__((used)) static ssize_t fat_direct_IO(int rw, struct kiocb *iocb,
        const struct iovec *iov,
        loff_t offset, unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;

 if (rw == WRITE) {
  loff_t size = offset + iov_length(iov, nr_segs);
  if (MSDOS_I(inode)->mmu_private < size)
   return 0;
 }





 return blockdev_direct_IO(rw, iocb, inode, inode->i_sb->s_bdev, iov,
      offset, nr_segs, fat_get_block, ((void*)0));
}
