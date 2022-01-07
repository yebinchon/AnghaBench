
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct posix_acl {int a_count; } ;
struct inode {int i_sb; int i_mode; } ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ STAT_DATA_V1 ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ get_inode_sd_version (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,size_t) ;
 int journal_end (struct reiserfs_transaction_handle*,int ,size_t) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int reiserfs_acl_size (int ) ;
 struct posix_acl* reiserfs_get_acl (struct inode*,int ) ;
 int reiserfs_posixacl (int ) ;
 int reiserfs_set_acl (struct reiserfs_transaction_handle*,struct inode*,int ,struct posix_acl*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 size_t reiserfs_xattr_nblocks (struct inode*,int ) ;

int reiserfs_acl_chmod(struct inode *inode)
{
 struct posix_acl *acl, *clone;
 int error;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 if (get_inode_sd_version(inode) == STAT_DATA_V1 ||
     !reiserfs_posixacl(inode->i_sb)) {
  return 0;
 }

 acl = reiserfs_get_acl(inode, ACL_TYPE_ACCESS);
 if (!acl)
  return 0;
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 clone = posix_acl_clone(acl, GFP_NOFS);
 posix_acl_release(acl);
 if (!clone)
  return -ENOMEM;
 error = posix_acl_chmod_masq(clone, inode->i_mode);
 if (!error) {
  struct reiserfs_transaction_handle th;
  size_t size = reiserfs_xattr_nblocks(inode,
          reiserfs_acl_size(clone->a_count));
  reiserfs_write_lock(inode->i_sb);
  error = journal_begin(&th, inode->i_sb, size * 2);
  if (!error) {
   int error2;
   error = reiserfs_set_acl(&th, inode, ACL_TYPE_ACCESS,
       clone);
   error2 = journal_end(&th, inode->i_sb, size * 2);
   if (error2)
    error = error2;
  }
  reiserfs_write_unlock(inode->i_sb);
 }
 posix_acl_release(clone);
 return error;
}
