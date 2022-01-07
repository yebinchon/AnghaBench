
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int i_ctime; int i_mode; } ;
typedef int mode_t ;




 int CURRENT_TIME_SEC ;
 int EACCES ;
 int EINVAL ;
 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (void*) ;
 char* POSIX_ACL_XATTR_ACCESS ;
 char* POSIX_ACL_XATTR_DEFAULT ;
 scalar_t__ PTR_ERR (void*) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int kfree (void*) ;
 int mark_inode_dirty (struct inode*) ;
 int posix_acl_equiv_mode (struct posix_acl*,int *) ;
 void* posix_acl_to_disk (struct posix_acl*,size_t*) ;
 int reiserfs_xattr_set_handle (struct reiserfs_transaction_handle*,struct inode*,char*,void*,size_t,int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int
reiserfs_set_acl(struct reiserfs_transaction_handle *th, struct inode *inode,
   int type, struct posix_acl *acl)
{
 char *name;
 void *value = ((void*)0);
 size_t size = 0;
 int error;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 switch (type) {
 case 129:
  name = POSIX_ACL_XATTR_ACCESS;
  if (acl) {
   mode_t mode = inode->i_mode;
   error = posix_acl_equiv_mode(acl, &mode);
   if (error < 0)
    return error;
   else {
    inode->i_mode = mode;
    if (error == 0)
     acl = ((void*)0);
   }
  }
  break;
 case 128:
  name = POSIX_ACL_XATTR_DEFAULT;
  if (!S_ISDIR(inode->i_mode))
   return acl ? -EACCES : 0;
  break;
 default:
  return -EINVAL;
 }

 if (acl) {
  value = posix_acl_to_disk(acl, &size);
  if (IS_ERR(value))
   return (int)PTR_ERR(value);
 }

 error = reiserfs_xattr_set_handle(th, inode, name, value, size, 0);







 if (error == -ENODATA) {
  error = 0;
  if (type == 129) {
   inode->i_ctime = CURRENT_TIME_SEC;
   mark_inode_dirty(inode);
  }
 }

 kfree(value);

 if (!error)
  set_cached_acl(inode, type, acl);

 return error;
}
