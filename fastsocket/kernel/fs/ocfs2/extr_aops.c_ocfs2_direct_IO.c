
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_11__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_12__ {int ip_dyn_features; } ;
struct TYPE_10__ {TYPE_3__* d_inode; } ;
struct TYPE_9__ {TYPE_2__* i_mapping; } ;
struct TYPE_8__ {struct inode* host; } ;
struct TYPE_7__ {int s_bdev; } ;


 TYPE_6__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int blockdev_direct_IO_no_locking (int,struct kiocb*,struct inode*,int ,struct iovec const*,int ,unsigned long,int ,int ) ;
 int i_size_read (struct inode*) ;
 int mlog_entry_void () ;
 int mlog_exit (int) ;
 int ocfs2_dio_end_io ;
 int ocfs2_direct_IO_get_blocks ;

__attribute__((used)) static ssize_t ocfs2_direct_IO(int rw,
          struct kiocb *iocb,
          const struct iovec *iov,
          loff_t offset,
          unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_path.dentry->d_inode->i_mapping->host;
 int ret;

 mlog_entry_void();





 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  return 0;


 if (i_size_read(inode) <= offset)
  return 0;

 ret = blockdev_direct_IO_no_locking(rw, iocb, inode,
         inode->i_sb->s_bdev, iov, offset,
         nr_segs,
         ocfs2_direct_IO_get_blocks,
         ocfs2_dio_end_io);

 mlog_exit(ret);
 return ret;
}
