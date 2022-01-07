
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nilfs_sb_info {int s_ifile; } ;
struct nilfs_inode_info {int i_state; } ;
struct nilfs_inode {int dummy; } ;
struct inode {struct super_block* i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int ino_t ;
struct TYPE_2__ {int mi_entry_size; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_INODE_DIRTY ;
 int NILFS_I_NEW ;
 TYPE_1__* NILFS_MDT (int ) ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 int memset (struct nilfs_inode*,int ,int ) ;
 struct nilfs_inode* nilfs_ifile_map_inode (int ,int ,struct buffer_head*) ;
 int nilfs_ifile_unmap_inode (int ,int ,struct buffer_head*) ;
 int nilfs_write_inode_common (struct inode*,struct nilfs_inode*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void nilfs_update_inode(struct inode *inode, struct buffer_head *ibh)
{
 ino_t ino = inode->i_ino;
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct super_block *sb = inode->i_sb;
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct nilfs_inode *raw_inode;

 raw_inode = nilfs_ifile_map_inode(sbi->s_ifile, ino, ibh);


 if (test_and_clear_bit(NILFS_I_NEW, &ii->i_state))
  memset(raw_inode, 0, NILFS_MDT(sbi->s_ifile)->mi_entry_size);
 set_bit(NILFS_I_INODE_DIRTY, &ii->i_state);

 nilfs_write_inode_common(inode, raw_inode, 0);



 nilfs_ifile_unmap_inode(sbi->s_ifile, ino, ibh);
}
