
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_attr_list_context {int resynch; char* alist; size_t bufsize; size_t firstu; scalar_t__ count; int put_listent; struct attrlist_cursor_kern* cursor; int dp; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct attrlist_cursor_kern {int member_0; } ;
typedef int ssize_t ;
typedef int context ;


 int ERANGE ;
 int POSIX_ACL_XATTR_ACCESS ;
 int POSIX_ACL_XATTR_DEFAULT ;
 int XFS_I (struct inode*) ;
 int list_one_attr (int ,scalar_t__,char*,size_t,scalar_t__*) ;
 int memset (struct xfs_attr_list_context*,int ,int) ;
 scalar_t__ posix_acl_access_exists (struct inode*) ;
 scalar_t__ posix_acl_default_exists (struct inode*) ;
 scalar_t__ strlen (int ) ;
 int xfs_attr_list_int (struct xfs_attr_list_context*) ;
 int xfs_xattr_put_listent ;
 int xfs_xattr_put_listent_sizes ;

ssize_t
xfs_vn_listxattr(struct dentry *dentry, char *data, size_t size)
{
 struct xfs_attr_list_context context;
 struct attrlist_cursor_kern cursor = { 0 };
 struct inode *inode = dentry->d_inode;
 int error;




 memset(&context, 0, sizeof(context));
 context.dp = XFS_I(inode);
 context.cursor = &cursor;
 context.resynch = 1;
 context.alist = data;
 context.bufsize = size;
 context.firstu = context.bufsize;

 if (size)
  context.put_listent = xfs_xattr_put_listent;
 else
  context.put_listent = xfs_xattr_put_listent_sizes;

 xfs_attr_list_int(&context);
 if (context.count < 0)
  return -ERANGE;




 if (posix_acl_access_exists(inode)) {
  error = list_one_attr(POSIX_ACL_XATTR_ACCESS,
    strlen(POSIX_ACL_XATTR_ACCESS) + 1,
    data, size, &context.count);
  if (error)
   return error;
 }

 if (posix_acl_default_exists(inode)) {
  error = list_one_attr(POSIX_ACL_XATTR_DEFAULT,
    strlen(POSIX_ACL_XATTR_DEFAULT) + 1,
    data, size, &context.count);
  if (error)
   return error;
 }

 return context.count;
}
