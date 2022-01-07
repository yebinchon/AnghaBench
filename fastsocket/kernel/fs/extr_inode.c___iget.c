
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_list; int i_count; } ;
struct TYPE_2__ {int nr_unused; } ;


 int I_DIRTY ;
 int I_SYNC ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int inode_in_use ;
 TYPE_1__ inodes_stat ;
 int list_move (int *,int *) ;

void __iget(struct inode *inode)
{
 if (atomic_read(&inode->i_count)) {
  atomic_inc(&inode->i_count);
  return;
 }
 atomic_inc(&inode->i_count);
 if (!(inode->i_state & (I_DIRTY|I_SYNC)))
  list_move(&inode->i_list, &inode_in_use);
 inodes_stat.nr_unused--;
}
