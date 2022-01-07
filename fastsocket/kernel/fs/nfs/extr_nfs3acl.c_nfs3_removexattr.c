
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int EOPNOTSUPP ;
 int POSIX_ACL_XATTR_ACCESS ;
 int POSIX_ACL_XATTR_DEFAULT ;
 int nfs3_proc_setacl (struct inode*,int,int *) ;
 scalar_t__ strcmp (char const*,int ) ;

int nfs3_removexattr(struct dentry *dentry, const char *name)
{
 struct inode *inode = dentry->d_inode;
 int type;

 if (strcmp(name, POSIX_ACL_XATTR_ACCESS) == 0)
  type = ACL_TYPE_ACCESS;
 else if (strcmp(name, POSIX_ACL_XATTR_DEFAULT) == 0)
  type = ACL_TYPE_DEFAULT;
 else
  return -EOPNOTSUPP;

 return nfs3_proc_setacl(inode, type, ((void*)0));
}
