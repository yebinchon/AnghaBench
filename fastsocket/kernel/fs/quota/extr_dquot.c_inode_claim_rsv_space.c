
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
typedef scalar_t__ qsize_t ;


 int __inode_add_bytes (struct inode*,scalar_t__) ;
 int * inode_reserved_space (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inode_claim_rsv_space(struct inode *inode, qsize_t number)
{
 spin_lock(&inode->i_lock);
 *inode_reserved_space(inode) -= number;
 __inode_add_bytes(inode, number);
 spin_unlock(&inode->i_lock);
}
