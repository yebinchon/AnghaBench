
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int I_BDEV (struct inode*) ;
 int blkdev_get_block ;
 int blockdev_direct_IO_no_locking (int,struct kiocb*,struct inode*,int ,struct iovec const*,int ,unsigned long,int ,int *) ;

__attribute__((used)) static ssize_t
blkdev_direct_IO(int rw, struct kiocb *iocb, const struct iovec *iov,
   loff_t offset, unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;

 return blockdev_direct_IO_no_locking(rw, iocb, inode, I_BDEV(inode),
    iov, offset, nr_segs, blkdev_get_block, ((void*)0));
}
