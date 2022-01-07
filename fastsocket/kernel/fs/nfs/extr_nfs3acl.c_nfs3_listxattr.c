
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;
struct dentry {struct inode* d_inode; } ;
typedef int ssize_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ERANGE ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISDIR (int ) ;
 struct posix_acl* nfs3_proc_getacl (struct inode*,int ) ;
 int output (char*) ;
 int posix_acl_release (struct posix_acl*) ;

ssize_t nfs3_listxattr(struct dentry *dentry, char *buffer, size_t size)
{
 struct inode *inode = dentry->d_inode;
 struct posix_acl *acl;
 int pos=0, len=0;
 acl = nfs3_proc_getacl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl) {
  do { if (pos + sizeof("system.posix_acl_access") <= size) { memcpy(buffer + pos, "system.posix_acl_access", sizeof("system.posix_acl_access")); pos += sizeof("system.posix_acl_access"); } len += sizeof("system.posix_acl_access"); } while(0);
  posix_acl_release(acl);
 }

 if (S_ISDIR(inode->i_mode)) {
  acl = nfs3_proc_getacl(inode, ACL_TYPE_DEFAULT);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
  if (acl) {
   do { if (pos + sizeof("system.posix_acl_default") <= size) { memcpy(buffer + pos, "system.posix_acl_default", sizeof("system.posix_acl_default")); pos += sizeof("system.posix_acl_default"); } len += sizeof("system.posix_acl_default"); } while(0);
   posix_acl_release(acl);
  }
 }



 if (!buffer || len <= size)
  return len;
 return -ERANGE;
}
