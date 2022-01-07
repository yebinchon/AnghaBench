
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int (* set ) (struct inode*,char const*,int *,int ,int ) ;} ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int s_xattr; } ;


 int EOPNOTSUPP ;
 int XATTR_REPLACE ;
 int stub1 (struct inode*,char const*,int *,int ,int ) ;
 struct xattr_handler* xattr_resolve_name (int ,char const**) ;

int
generic_removexattr(struct dentry *dentry, const char *name)
{
 struct xattr_handler *handler;
 struct inode *inode = dentry->d_inode;

 handler = xattr_resolve_name(inode->i_sb->s_xattr, &name);
 if (!handler)
  return -EOPNOTSUPP;
 return handler->set(inode, name, ((void*)0), 0, XATTR_REPLACE);
}
