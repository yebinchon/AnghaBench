
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_mode; } ;
struct buffer_head {int dummy; } ;
typedef int mode_t ;
typedef int handle_t ;




 int EACCES ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (void*) ;
 int OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 scalar_t__ PTR_ERR (void*) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int kfree (void*) ;
 void* ocfs2_acl_to_xattr (struct posix_acl*,size_t*) ;
 int ocfs2_xattr_set (struct inode*,int,char*,void*,size_t,int ) ;
 int ocfs2_xattr_set_handle (int *,struct inode*,struct buffer_head*,int,char*,void*,size_t,int ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ;
 int posix_acl_equiv_mode (struct posix_acl*,int *) ;

__attribute__((used)) static int ocfs2_set_acl(handle_t *handle,
    struct inode *inode,
    struct buffer_head *di_bh,
    int type,
    struct posix_acl *acl,
    struct ocfs2_alloc_context *meta_ac,
    struct ocfs2_alloc_context *data_ac)
{
 int name_index;
 void *value = ((void*)0);
 size_t size = 0;
 int ret;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 switch (type) {
 case 129:
  name_index = OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS;
  if (acl) {
   mode_t mode = inode->i_mode;
   ret = posix_acl_equiv_mode(acl, &mode);
   if (ret < 0)
    return ret;
   else {
    inode->i_mode = mode;
    if (ret == 0)
     acl = ((void*)0);
   }
  }
  break;
 case 128:
  name_index = OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT;
  if (!S_ISDIR(inode->i_mode))
   return acl ? -EACCES : 0;
  break;
 default:
  return -EINVAL;
 }

 if (acl) {
  value = ocfs2_acl_to_xattr(acl, &size);
  if (IS_ERR(value))
   return (int)PTR_ERR(value);
 }

 if (handle)
  ret = ocfs2_xattr_set_handle(handle, inode, di_bh, name_index,
          "", value, size, 0,
          meta_ac, data_ac);
 else
  ret = ocfs2_xattr_set(inode, name_index, "", value, size, 0);

 kfree(value);

 return ret;
}
