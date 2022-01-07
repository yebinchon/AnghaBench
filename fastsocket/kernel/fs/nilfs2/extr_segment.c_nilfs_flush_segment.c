
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_sc_info {int dummy; } ;
struct nilfs_sb_info {int dummy; } ;
typedef int ino_t ;


 scalar_t__ NILFS_MDT_INODE (struct super_block*,int ) ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 struct nilfs_sc_info* NILFS_SC (struct nilfs_sb_info*) ;
 scalar_t__ nilfs_doing_construction () ;
 int nilfs_segctor_do_flush (struct nilfs_sc_info*,int ) ;

void nilfs_flush_segment(struct super_block *sb, ino_t ino)
{
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct nilfs_sc_info *sci = NILFS_SC(sbi);

 if (!sci || nilfs_doing_construction())
  return;
 nilfs_segctor_do_flush(sci, NILFS_MDT_INODE(sb, ino) ? ino : 0);

}
