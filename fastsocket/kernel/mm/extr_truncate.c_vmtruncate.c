
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* truncate ) (struct inode*) ;} ;


 int inode_newsize_ok (struct inode*,int ) ;
 int stub1 (struct inode*) ;
 int truncate_setsize (struct inode*,int ) ;

int vmtruncate(struct inode *inode, loff_t newsize)
{
 int error;

 error = inode_newsize_ok(inode, newsize);
 if (error)
  return error;

 truncate_setsize(inode, newsize);
 if (inode->i_op->truncate)
  inode->i_op->truncate(inode);
 return 0;
}
