
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {struct inode* root_inode; } ;
struct nameidata {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_mode; } ;
struct TYPE_3__ {int name; int len; } ;
struct dentry {int d_fsdata; TYPE_1__ d_name; int d_sb; struct inode* d_inode; } ;
struct TYPE_4__ {int ip_flags; scalar_t__ ip_blkno; int ip_lock; } ;


 int BUG_ON (int) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int S_ISDIR (int ) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mlog (int ,char*,unsigned long long,...) ;
 int mlog_entry (char*,struct dentry*,int ,int ) ;
 int mlog_exit (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_dentry_revalidate(struct dentry *dentry,
       struct nameidata *nd)
{
 struct inode *inode = dentry->d_inode;
 int ret = 0;
 struct ocfs2_super *osb = OCFS2_SB(dentry->d_sb);

 mlog_entry("(0x%p, '%.*s')\n", dentry,
     dentry->d_name.len, dentry->d_name.name);


 if (inode == ((void*)0)) {
  mlog(0, "negative dentry: %.*s\n", dentry->d_name.len,
       dentry->d_name.name);
  goto bail;
 }

 BUG_ON(!osb);

 if (inode == osb->root_inode || is_bad_inode(inode))
  goto bail;

 spin_lock(&OCFS2_I(inode)->ip_lock);

 if (OCFS2_I(inode)->ip_flags & OCFS2_INODE_DELETED) {
  spin_unlock(&OCFS2_I(inode)->ip_lock);
  mlog(0, "inode (%llu) deleted, returning false\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
  goto bail;
 }
 spin_unlock(&OCFS2_I(inode)->ip_lock);





 if (inode->i_nlink == 0) {
  mlog(0, "Inode %llu orphaned, returning false "
       "dir = %d\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno,
       S_ISDIR(inode->i_mode));
  goto bail;
 }





 if (!dentry->d_fsdata) {
  mlog(0, "Inode %llu doesn't have dentry lock, "
       "returning false\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
  goto bail;
 }

 ret = 1;

bail:
 mlog_exit(ret);

 return ret;
}
