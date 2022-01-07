
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_free_security ) (struct inode*) ;} ;


 int ima_inode_free (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*) ;

void security_inode_free(struct inode *inode)
{
 ima_inode_free(inode);
 security_ops->inode_free_security(inode);
}
