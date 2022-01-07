
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_state; int i_count; } ;


 int BUG_ON (int) ;
 scalar_t__ I_CLEAR ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int inode_lock ;
 int iput_final (struct inode*) ;

void iput(struct inode *inode)
{
 if (inode) {
  BUG_ON(inode->i_state == I_CLEAR);

  if (atomic_dec_and_lock(&inode->i_count, &inode_lock))
   iput_final(inode);
 }
}
