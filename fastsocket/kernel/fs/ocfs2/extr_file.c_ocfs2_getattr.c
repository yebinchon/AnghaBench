
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {struct ocfs2_super* s_fs_info; } ;
struct ocfs2_super {int s_clustersize; } ;
struct kstat {int blksize; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {struct inode* d_inode; } ;


 int ENOENT ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_inode_revalidate (struct dentry*) ;

int ocfs2_getattr(struct vfsmount *mnt,
    struct dentry *dentry,
    struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 struct super_block *sb = dentry->d_inode->i_sb;
 struct ocfs2_super *osb = sb->s_fs_info;
 int err;

 mlog_entry_void();

 err = ocfs2_inode_revalidate(dentry);
 if (err) {
  if (err != -ENOENT)
   mlog_errno(err);
  goto bail;
 }

 generic_fillattr(inode, stat);


 stat->blksize = osb->s_clustersize;

bail:
 mlog_exit(err);

 return err;
}
