
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_sb; int i_mode; } ;
typedef struct posix_acl handle_t ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int EXT3_DATA_TRANS_BLOCKS (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int POSIX_ACL ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISLNK (int ) ;
 struct posix_acl* ext3_get_acl (struct inode*,int ) ;
 struct posix_acl* ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (struct posix_acl*) ;
 int ext3_set_acl (struct posix_acl*,struct inode*,int ,struct posix_acl*) ;
 scalar_t__ ext3_should_retry_alloc (int ,int*) ;
 int ext3_std_error (int ,int) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int test_opt (int ,int ) ;

int
ext3_acl_chmod(struct inode *inode)
{
 struct posix_acl *acl, *clone;
        int error;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;
 if (!test_opt(inode->i_sb, POSIX_ACL))
  return 0;
 acl = ext3_get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR(acl) || !acl)
  return PTR_ERR(acl);
 clone = posix_acl_clone(acl, GFP_KERNEL);
 posix_acl_release(acl);
 if (!clone)
  return -ENOMEM;
 error = posix_acl_chmod_masq(clone, inode->i_mode);
 if (!error) {
  handle_t *handle;
  int retries = 0;

 retry:
  handle = ext3_journal_start(inode,
    EXT3_DATA_TRANS_BLOCKS(inode->i_sb));
  if (IS_ERR(handle)) {
   error = PTR_ERR(handle);
   ext3_std_error(inode->i_sb, error);
   goto out;
  }
  error = ext3_set_acl(handle, inode, ACL_TYPE_ACCESS, clone);
  ext3_journal_stop(handle);
  if (error == -ENOSPC &&
      ext3_should_retry_alloc(inode->i_sb, &retries))
   goto retry;
 }
out:
 posix_acl_release(clone);
 return error;
}
