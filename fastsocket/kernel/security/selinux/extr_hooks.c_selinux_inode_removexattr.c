
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EACCES ;
 int XATTR_NAME_SELINUX ;
 int selinux_inode_setotherxattr (struct dentry*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_removexattr(struct dentry *dentry, const char *name)
{
 if (strcmp(name, XATTR_NAME_SELINUX))
  return selinux_inode_setotherxattr(dentry, name);



 return -EACCES;
}
