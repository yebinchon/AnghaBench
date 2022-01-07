
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_inode; } ;
struct TYPE_2__ {int (* inode_post_setxattr ) (struct dentry*,char const*,void const*,size_t,int) ;} ;


 int IS_PRIVATE (int ) ;
 TYPE_1__* security_ops ;
 int stub1 (struct dentry*,char const*,void const*,size_t,int) ;
 scalar_t__ unlikely (int ) ;

void security_inode_post_setxattr(struct dentry *dentry, const char *name,
      const void *value, size_t size, int flags)
{
 if (unlikely(IS_PRIVATE(dentry->d_inode)))
  return;
 security_ops->inode_post_setxattr(dentry, name, value, size, flags);
}
