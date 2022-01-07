
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_inode_info {int ip_lock; int ip_flags; int ip_open_count; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_4__ {int name; int len; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_OPEN_DIRECT ;
 int mlog_entry (char*,struct inode*,struct file*,int ,int ) ;
 int mlog_exit (int ) ;
 int ocfs2_free_file_private (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_file_release(struct inode *inode, struct file *file)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 mlog_entry("(0x%p, 0x%p, '%.*s')\n", inode, file,
         file->f_path.dentry->d_name.len,
         file->f_path.dentry->d_name.name);

 spin_lock(&oi->ip_lock);
 if (!--oi->ip_open_count)
  oi->ip_flags &= ~OCFS2_INODE_OPEN_DIRECT;
 spin_unlock(&oi->ip_lock);

 ocfs2_free_file_private(inode, file);

 mlog_exit(0);

 return 0;
}
