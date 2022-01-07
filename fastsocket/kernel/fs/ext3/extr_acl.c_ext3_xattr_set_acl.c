
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_sb; } ;
typedef struct posix_acl handle_t ;


 int ENOSPC ;
 int EOPNOTSUPP ;
 int EPERM ;
 int EXT3_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int POSIX_ACL ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (struct posix_acl*) ;
 int ext3_set_acl (struct posix_acl*,struct inode*,int,struct posix_acl*) ;
 scalar_t__ ext3_should_retry_alloc (int ,int*) ;
 int is_owner_or_cap (struct inode*) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static int
ext3_xattr_set_acl(struct inode *inode, int type, const void *value,
     size_t size)
{
 handle_t *handle;
 struct posix_acl *acl;
 int error, retries = 0;

 if (!test_opt(inode->i_sb, POSIX_ACL))
  return -EOPNOTSUPP;
 if (!is_owner_or_cap(inode))
  return -EPERM;

 if (value) {
  acl = posix_acl_from_xattr(value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
  else if (acl) {
   error = posix_acl_valid(acl);
   if (error)
    goto release_and_out;
  }
 } else
  acl = ((void*)0);

retry:
 handle = ext3_journal_start(inode, EXT3_DATA_TRANS_BLOCKS(inode->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);
 error = ext3_set_acl(handle, inode, type, acl);
 ext3_journal_stop(handle);
 if (error == -ENOSPC && ext3_should_retry_alloc(inode->i_sb, &retries))
  goto retry;

release_and_out:
 posix_acl_release(acl);
 return error;
}
