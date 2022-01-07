
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_inode_info {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_vfsmnt; TYPE_3__ f_path; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {int name; int len; } ;
struct TYPE_5__ {TYPE_1__ d_name; struct inode* d_inode; } ;


 int generic_file_splice_read (struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 int mlog_entry (char*,struct file*,struct pipe_inode_info*,unsigned int,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_inode_lock_atime (struct inode*,int ,int*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;

__attribute__((used)) static ssize_t ocfs2_file_splice_read(struct file *in,
          loff_t *ppos,
          struct pipe_inode_info *pipe,
          size_t len,
          unsigned int flags)
{
 int ret = 0, lock_level = 0;
 struct inode *inode = in->f_path.dentry->d_inode;

 mlog_entry("(0x%p, 0x%p, %u, '%.*s')\n", in, pipe,
     (unsigned int)len,
     in->f_path.dentry->d_name.len,
     in->f_path.dentry->d_name.name);




 ret = ocfs2_inode_lock_atime(inode, in->f_vfsmnt, &lock_level);
 if (ret < 0) {
  mlog_errno(ret);
  goto bail;
 }
 ocfs2_inode_unlock(inode, lock_level);

 ret = generic_file_splice_read(in, ppos, pipe, len, flags);

bail:
 mlog_exit(ret);
 return ret;
}
