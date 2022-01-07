
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; int ip_lock; int ip_flags; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {int * d_op; TYPE_1__ d_name; } ;


 int EACCES ;
 int ENAMETOOLONG ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 scalar_t__ OCFS2_MAX_FILENAME_LEN ;
 int OCFS2_SB (int ) ;
 int OI_LS_PARENT ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int mlog (int ,char*,scalar_t__,int ,unsigned long long) ;
 int mlog_entry (char*,struct inode*,struct dentry*,scalar_t__,int ) ;
 int mlog_errno (int) ;
 int mlog_exit_ptr (struct dentry*) ;
 int ocfs2_dentry_attach_lock (struct dentry*,struct inode*,scalar_t__) ;
 int ocfs2_dentry_ops ;
 struct inode* ocfs2_iget (int ,int ,int ,int ) ;
 int ocfs2_inode_lock_nested (struct inode*,int *,int ,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_lookup_ino_from_name (struct inode*,int ,scalar_t__,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dentry *ocfs2_lookup(struct inode *dir, struct dentry *dentry,
       struct nameidata *nd)
{
 int status;
 u64 blkno;
 struct inode *inode = ((void*)0);
 struct dentry *ret;
 struct ocfs2_inode_info *oi;

 mlog_entry("(0x%p, 0x%p, '%.*s')\n", dir, dentry,
     dentry->d_name.len, dentry->d_name.name);

 if (dentry->d_name.len > OCFS2_MAX_FILENAME_LEN) {
  ret = ERR_PTR(-ENAMETOOLONG);
  goto bail;
 }

 mlog(0, "find name %.*s in directory %llu\n", dentry->d_name.len,
      dentry->d_name.name, (unsigned long long)OCFS2_I(dir)->ip_blkno);

 status = ocfs2_inode_lock_nested(dir, ((void*)0), 0, OI_LS_PARENT);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  ret = ERR_PTR(status);
  goto bail;
 }

 status = ocfs2_lookup_ino_from_name(dir, dentry->d_name.name,
         dentry->d_name.len, &blkno);
 if (status < 0)
  goto bail_add;

 inode = ocfs2_iget(OCFS2_SB(dir->i_sb), blkno, 0, 0);
 if (IS_ERR(inode)) {
  ret = ERR_PTR(-EACCES);
  goto bail_unlock;
 }

 oi = OCFS2_I(inode);





 spin_lock(&oi->ip_lock);
 oi->ip_flags &= ~OCFS2_INODE_MAYBE_ORPHANED;
 spin_unlock(&oi->ip_lock);

bail_add:
 dentry->d_op = &ocfs2_dentry_ops;
 ret = d_splice_alias(inode, dentry);

 if (inode) {
  if (ret)
   dentry = ret;

  status = ocfs2_dentry_attach_lock(dentry, inode,
        OCFS2_I(dir)->ip_blkno);
  if (status) {
   mlog_errno(status);
   ret = ERR_PTR(status);
   goto bail_unlock;
  }
 }

bail_unlock:




 ocfs2_inode_unlock(dir, 0);

bail:

 mlog_exit_ptr(ret);

 return ret;
}
