
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sem; } ;
struct super_block {scalar_t__ s_dirt; } ;
struct nilfs_sb_info {struct the_nilfs* s_nilfs; } ;


 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 int down_write (int *) ;
 int nilfs_commit_super (struct nilfs_sb_info*,int) ;
 int nilfs_construct_segment (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static int nilfs_sync_fs(struct super_block *sb, int wait)
{
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct the_nilfs *nilfs = sbi->s_nilfs;
 int err = 0;


 if (wait)
  err = nilfs_construct_segment(sb);

 down_write(&nilfs->ns_sem);
 if (sb->s_dirt)
  nilfs_commit_super(sbi, 1);
 up_write(&nilfs->ns_sem);

 return err;
}
