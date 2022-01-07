
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_delete ) (struct inode*) ;} ;


 int IS_PRIVATE (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*) ;
 scalar_t__ unlikely (int ) ;

void security_inode_delete(struct inode *inode)
{
 if (unlikely(IS_PRIVATE(inode)))
  return;
 security_ops->inode_delete(inode);
}
