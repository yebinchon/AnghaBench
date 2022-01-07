
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_sb_info {int s_inodes_count; int s_ifile; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;


 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 int atomic_dec (int *) ;
 int clear_inode (struct inode*) ;
 int nilfs_ifile_delete_inode (int ,int ) ;

void nilfs_free_inode(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct nilfs_sb_info *sbi = NILFS_SB(sb);

 clear_inode(inode);

 (void) nilfs_ifile_delete_inode(sbi->s_ifile, inode->i_ino);
 atomic_dec(&sbi->s_inodes_count);
}
