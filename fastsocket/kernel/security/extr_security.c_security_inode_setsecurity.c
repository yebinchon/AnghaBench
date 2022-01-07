
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_setsecurity ) (struct inode*,char const*,void const*,size_t,int) ;} ;


 int IS_PRIVATE (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*,char const*,void const*,size_t,int) ;
 scalar_t__ unlikely (int ) ;

int security_inode_setsecurity(struct inode *inode, const char *name, const void *value, size_t size, int flags)
{
 if (unlikely(IS_PRIVATE(inode)))
  return 0;
 return security_ops->inode_setsecurity(inode, name, value, size, flags);
}
