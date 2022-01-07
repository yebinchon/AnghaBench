
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_5__* i_sb; } ;
struct TYPE_9__ {TYPE_3__* dentry; } ;
struct file {TYPE_4__ f_path; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_10__ {int s_bdev; } ;
struct TYPE_8__ {TYPE_2__* d_inode; } ;
struct TYPE_7__ {TYPE_1__* i_mapping; } ;
struct TYPE_6__ {struct inode* host; } ;


 int blockdev_direct_IO (int,struct kiocb*,struct inode*,int ,struct iovec const*,int ,unsigned long,int ,int *) ;
 int hfsplus_get_block ;

__attribute__((used)) static ssize_t hfsplus_direct_IO(int rw, struct kiocb *iocb,
  const struct iovec *iov, loff_t offset, unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_path.dentry->d_inode->i_mapping->host;

 return blockdev_direct_IO(rw, iocb, inode, inode->i_sb->s_bdev, iov,
      offset, nr_segs, hfsplus_get_block, ((void*)0));
}
