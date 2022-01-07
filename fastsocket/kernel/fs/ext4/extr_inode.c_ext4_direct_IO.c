
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


 int EXT4_INODE_EXTENTS ;
 int ext4_ext_direct_IO (int,struct kiocb*,struct iovec const*,int ,unsigned long) ;
 int ext4_ind_direct_IO (int,struct kiocb*,struct iovec const*,int ,unsigned long) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;

__attribute__((used)) static ssize_t ext4_direct_IO(int rw, struct kiocb *iocb,
         const struct iovec *iov, loff_t offset,
         unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;

 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
  return ext4_ext_direct_IO(rw, iocb, iov, offset, nr_segs);

 return ext4_ind_direct_IO(rw, iocb, iov, offset, nr_segs);
}
