
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int (* set ) (struct inode*,char const*,void const*,size_t,int) ;} ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int s_xattr; } ;


 int EOPNOTSUPP ;
 int stub1 (struct inode*,char const*,void const*,size_t,int) ;
 struct xattr_handler* xattr_resolve_name (int ,char const**) ;

int
generic_setxattr(struct dentry *dentry, const char *name, const void *value, size_t size, int flags)
{
 struct xattr_handler *handler;
 struct inode *inode = dentry->d_inode;

 if (size == 0)
  value = "";
 handler = xattr_resolve_name(inode->i_sb->s_xattr, &name);
 if (!handler)
  return -EOPNOTSUPP;
 return handler->set(inode, name, value, size, flags);
}
