
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int (* get ) (struct inode*,char const*,void*,size_t) ;} ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
typedef int ssize_t ;
struct TYPE_2__ {int s_xattr; } ;


 int EOPNOTSUPP ;
 int stub1 (struct inode*,char const*,void*,size_t) ;
 struct xattr_handler* xattr_resolve_name (int ,char const**) ;

ssize_t
generic_getxattr(struct dentry *dentry, const char *name, void *buffer, size_t size)
{
 struct xattr_handler *handler;
 struct inode *inode = dentry->d_inode;

 handler = xattr_resolve_name(inode->i_sb->s_xattr, &name);
 if (!handler)
  return -EOPNOTSUPP;
 return handler->get(inode, name, buffer, size);
}
