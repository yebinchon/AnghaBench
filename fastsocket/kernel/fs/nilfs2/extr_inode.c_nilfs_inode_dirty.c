
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sb_info {int s_inode_lock; } ;
struct nilfs_inode_info {int i_state; int i_dirty; } ;
struct inode {int i_sb; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BUSY ;
 int NILFS_I_DIRTY ;
 struct nilfs_sb_info* NILFS_SB (int ) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int nilfs_inode_dirty(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct nilfs_sb_info *sbi = NILFS_SB(inode->i_sb);
 int ret = 0;

 if (!list_empty(&ii->i_dirty)) {
  spin_lock(&sbi->s_inode_lock);
  ret = test_bit(NILFS_I_DIRTY, &ii->i_state) ||
   test_bit(NILFS_I_BUSY, &ii->i_state);
  spin_unlock(&sbi->s_inode_lock);
 }
 return ret;
}
