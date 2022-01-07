
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; } ;


 int I_CLEAR ;
 int I_FREEING ;
 int I_WILL_FREE ;
 int __iget (struct inode*) ;
 int inode_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *igrab(struct inode *inode)
{
 spin_lock(&inode_lock);
 if (!(inode->i_state & (I_FREEING|I_CLEAR|I_WILL_FREE)))
  __iget(inode);
 else





  inode = ((void*)0);
 spin_unlock(&inode_lock);
 return inode;
}
