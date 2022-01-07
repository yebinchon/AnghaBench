
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {struct file* file; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int EIO ;
 int fuse_direct_io (struct fuse_io_priv*,struct iovec const*,unsigned long,size_t,int *,int ) ;
 int fuse_invalidate_attr (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;

__attribute__((used)) static ssize_t __fuse_direct_read(struct fuse_io_priv *io,
      const struct iovec *iov,
      unsigned long nr_segs, loff_t *ppos,
      size_t count)
{
 ssize_t res;
 struct file *file = io->file;
 struct inode *inode = file->f_path.dentry->d_inode;

 if (is_bad_inode(inode))
  return -EIO;

 res = fuse_direct_io(io, iov, nr_segs, count, ppos, 0);

 fuse_invalidate_attr(inode);

 return res;
}
