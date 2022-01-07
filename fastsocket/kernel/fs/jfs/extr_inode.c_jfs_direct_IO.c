
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {int s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;


 int blockdev_direct_IO (int,struct kiocb*,struct inode*,int ,struct iovec const*,int ,unsigned long,int ,int *) ;
 int jfs_get_block ;

__attribute__((used)) static ssize_t jfs_direct_IO(int rw, struct kiocb *iocb,
 const struct iovec *iov, loff_t offset, unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;

 return blockdev_direct_IO(rw, iocb, inode, inode->i_sb->s_bdev, iov,
    offset, nr_segs, jfs_get_block, ((void*)0));
}
