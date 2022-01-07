
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct inode {int i_state; int i_sb_list; int i_list; int i_hash; struct super_block* i_sb; } ;
struct TYPE_2__ {int nr_inodes; int nr_unused; } ;


 int I_DIRTY ;
 int I_FREEING ;
 int I_NEW ;
 int I_SYNC ;
 int I_WILL_FREE ;
 int MS_ACTIVE ;
 int WARN_ON (int) ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;
 int inode_lock ;
 int inode_unused ;
 TYPE_1__ inodes_stat ;
 int list_del_init (int *) ;
 int list_move (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_inode_now (struct inode*,int) ;

int generic_detach_inode(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;

 if (!hlist_unhashed(&inode->i_hash)) {
  if (!(inode->i_state & (I_DIRTY|I_SYNC)))
   list_move(&inode->i_list, &inode_unused);
  inodes_stat.nr_unused++;
  if (sb->s_flags & MS_ACTIVE) {
   spin_unlock(&inode_lock);
   return 0;
  }
  WARN_ON(inode->i_state & I_NEW);
  inode->i_state |= I_WILL_FREE;
  spin_unlock(&inode_lock);
  write_inode_now(inode, 1);
  spin_lock(&inode_lock);
  WARN_ON(inode->i_state & I_NEW);
  inode->i_state &= ~I_WILL_FREE;
  inodes_stat.nr_unused--;
  hlist_del_init(&inode->i_hash);
 }
 list_del_init(&inode->i_list);
 list_del_init(&inode->i_sb_list);
 WARN_ON(inode->i_state & I_NEW);
 inode->i_state |= I_FREEING;
 inodes_stat.nr_inodes--;
 spin_unlock(&inode_lock);
 return 1;
}
