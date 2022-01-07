
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_init_security ) (struct inode*,struct inode*,char**,void**,size_t*) ;} ;


 int EOPNOTSUPP ;
 int IS_PRIVATE (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*,struct inode*,char**,void**,size_t*) ;
 scalar_t__ unlikely (int ) ;

int security_inode_init_security(struct inode *inode, struct inode *dir,
      char **name, void **value, size_t *len)
{
 if (unlikely(IS_PRIVATE(inode)))
  return -EOPNOTSUPP;
 return security_ops->inode_init_security(inode, dir, name, value, len);
}
