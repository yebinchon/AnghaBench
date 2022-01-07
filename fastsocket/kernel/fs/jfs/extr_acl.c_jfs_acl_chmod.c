
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct posix_acl {int dummy; } ;
struct inode {int i_sb; int i_mode; } ;
struct TYPE_2__ {int commit_mutex; } ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 TYPE_1__* JFS_IP (struct inode*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISLNK (int ) ;
 struct posix_acl* jfs_get_acl (struct inode*,int ) ;
 int jfs_set_acl (int ,struct inode*,int ,struct posix_acl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;

__attribute__((used)) static int jfs_acl_chmod(struct inode *inode)
{
 struct posix_acl *acl, *clone;
 int rc;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 acl = jfs_get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR(acl) || !acl)
  return PTR_ERR(acl);

 clone = posix_acl_clone(acl, GFP_KERNEL);
 posix_acl_release(acl);
 if (!clone)
  return -ENOMEM;

 rc = posix_acl_chmod_masq(clone, inode->i_mode);
 if (!rc) {
  tid_t tid = txBegin(inode->i_sb, 0);
  mutex_lock(&JFS_IP(inode)->commit_mutex);
  rc = jfs_set_acl(tid, inode, ACL_TYPE_ACCESS, clone);
  if (!rc)
   rc = txCommit(tid, 1, &inode, 0);
  txEnd(tid);
  mutex_unlock(&JFS_IP(inode)->commit_mutex);
 }

 posix_acl_release(clone);
 return rc;
}
