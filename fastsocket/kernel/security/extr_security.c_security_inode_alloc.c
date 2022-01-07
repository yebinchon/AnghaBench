
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int * i_security; } ;
struct TYPE_2__ {int (* inode_alloc_security ) (struct inode*) ;} ;


 int ima_inode_alloc (struct inode*) ;
 int security_inode_free (struct inode*) ;
 TYPE_1__* security_ops ;
 int stub1 (struct inode*) ;

int security_inode_alloc(struct inode *inode)
{
 int ret;

 inode->i_security = ((void*)0);
 ret = security_ops->inode_alloc_security(inode);
 if (ret)
  return ret;
 ret = ima_inode_alloc(inode);
 if (ret)
  security_inode_free(inode);
 return ret;
}
