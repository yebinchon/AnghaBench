
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; int i_ctime; } ;
typedef int mode_t ;
typedef int handle_t ;




 int CURRENT_TIME_SEC ;
 int EACCES ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EXT3_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ PTR_ERR (void*) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 void* ext3_acl_to_disk (struct posix_acl*,size_t*) ;
 int ext3_mark_inode_dirty (int *,struct inode*) ;
 int ext3_xattr_set_handle (int *,struct inode*,int,char*,void*,size_t,int ) ;
 int kfree (void*) ;
 int posix_acl_equiv_mode (struct posix_acl*,int *) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int
ext3_set_acl(handle_t *handle, struct inode *inode, int type,
      struct posix_acl *acl)
{
 int name_index;
 void *value = ((void*)0);
 size_t size = 0;
 int error;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 switch(type) {
  case 129:
   name_index = EXT3_XATTR_INDEX_POSIX_ACL_ACCESS;
   if (acl) {
    mode_t mode = inode->i_mode;
    error = posix_acl_equiv_mode(acl, &mode);
    if (error < 0)
     return error;
    else {
     inode->i_mode = mode;
     inode->i_ctime = CURRENT_TIME_SEC;
     ext3_mark_inode_dirty(handle, inode);
     if (error == 0)
      acl = ((void*)0);
    }
   }
   break;

  case 128:
   name_index = EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT;
   if (!S_ISDIR(inode->i_mode))
    return acl ? -EACCES : 0;
   break;

  default:
   return -EINVAL;
 }
 if (acl) {
  value = ext3_acl_to_disk(acl, &size);
  if (IS_ERR(value))
   return (int)PTR_ERR(value);
 }

 error = ext3_xattr_set_handle(handle, inode, name_index, "",
          value, size, 0);

 kfree(value);

 if (!error)
  set_cached_acl(inode, type, acl);

 return error;
}
