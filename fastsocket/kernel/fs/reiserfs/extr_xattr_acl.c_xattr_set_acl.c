
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int i_sb; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int is_owner_or_cap (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,size_t) ;
 int journal_end (struct reiserfs_transaction_handle*,int ,size_t) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;
 int reiserfs_posixacl (int ) ;
 int reiserfs_set_acl (struct reiserfs_transaction_handle*,struct inode*,int,struct posix_acl*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 int reiserfs_xattr_jcreate_nblocks (struct inode*) ;
 int reiserfs_xattr_nblocks (struct inode*,size_t) ;

__attribute__((used)) static int
xattr_set_acl(struct inode *inode, int type, const void *value, size_t size)
{
 struct posix_acl *acl;
 int error, error2;
 struct reiserfs_transaction_handle th;
 size_t jcreate_blocks;
 if (!reiserfs_posixacl(inode->i_sb))
  return -EOPNOTSUPP;
 if (!is_owner_or_cap(inode))
  return -EPERM;

 if (value) {
  acl = posix_acl_from_xattr(value, size);
  if (IS_ERR(acl)) {
   return PTR_ERR(acl);
  } else if (acl) {
   error = posix_acl_valid(acl);
   if (error)
    goto release_and_out;
  }
 } else
  acl = ((void*)0);




 jcreate_blocks = reiserfs_xattr_jcreate_nblocks(inode) +
    reiserfs_xattr_nblocks(inode, size) * 2;

 reiserfs_write_lock(inode->i_sb);
 error = journal_begin(&th, inode->i_sb, jcreate_blocks);
 if (error == 0) {
  error = reiserfs_set_acl(&th, inode, type, acl);
  error2 = journal_end(&th, inode->i_sb, jcreate_blocks);
  if (error2)
   error = error2;
 }
 reiserfs_write_unlock(inode->i_sb);

      release_and_out:
 posix_acl_release(acl);
 return error;
}
