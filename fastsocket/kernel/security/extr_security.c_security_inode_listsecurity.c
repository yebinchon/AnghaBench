
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_listsecurity ) (struct inode*,char*,size_t) ;} ;


 int IS_PRIVATE (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*,char*,size_t) ;
 scalar_t__ unlikely (int ) ;

int security_inode_listsecurity(struct inode *inode, char *buffer, size_t buffer_size)
{
 if (unlikely(IS_PRIVATE(inode)))
  return 0;
 return security_ops->inode_listsecurity(inode, buffer, buffer_size);
}
