
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int EOPNOTSUPP ;
 int XATTR_NAME_NFSV4_ACL ;
 int nfs4_proc_set_acl (struct inode*,void const*,size_t) ;
 scalar_t__ strcmp (char const*,int ) ;

int nfs4_setxattr(struct dentry *dentry, const char *key, const void *buf,
  size_t buflen, int flags)
{
 struct inode *inode = dentry->d_inode;

 if (strcmp(key, XATTR_NAME_NFSV4_ACL) != 0)
  return -EOPNOTSUPP;

 return nfs4_proc_set_acl(inode, buf, buflen);
}
