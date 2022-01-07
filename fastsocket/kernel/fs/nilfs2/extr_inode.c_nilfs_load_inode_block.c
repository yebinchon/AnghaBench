
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sb_info {int s_inode_lock; int s_ifile; } ;
struct nilfs_inode_info {struct buffer_head* i_bh; } ;
struct inode {int i_ino; } ;
struct buffer_head {int dummy; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int nilfs_ifile_get_inode_block (int ,int ,struct buffer_head**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int nilfs_load_inode_block(struct nilfs_sb_info *sbi, struct inode *inode,
      struct buffer_head **pbh)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);
 int err;

 spin_lock(&sbi->s_inode_lock);
 if (ii->i_bh == ((void*)0)) {
  spin_unlock(&sbi->s_inode_lock);
  err = nilfs_ifile_get_inode_block(sbi->s_ifile, inode->i_ino,
        pbh);
  if (unlikely(err))
   return err;
  spin_lock(&sbi->s_inode_lock);
  if (ii->i_bh == ((void*)0))
   ii->i_bh = *pbh;
  else {
   brelse(*pbh);
   *pbh = ii->i_bh;
  }
 } else
  *pbh = ii->i_bh;

 get_bh(*pbh);
 spin_unlock(&sbi->s_inode_lock);
 return 0;
}
