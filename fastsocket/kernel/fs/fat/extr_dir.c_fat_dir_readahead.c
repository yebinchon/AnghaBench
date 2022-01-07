
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int sec_per_clus; int fat_bits; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 scalar_t__ MSDOS_ROOT_INO ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int sb_breadahead (struct super_block*,int) ;
 struct buffer_head* sb_find_get_block (struct super_block*,int) ;

__attribute__((used)) static inline void fat_dir_readahead(struct inode *dir, sector_t iblock,
         sector_t phys)
{
 struct super_block *sb = dir->i_sb;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 struct buffer_head *bh;
 int sec;


 if ((iblock & (sbi->sec_per_clus - 1)) || sbi->sec_per_clus == 1)
  return;

 if ((sbi->fat_bits != 32) && (dir->i_ino == MSDOS_ROOT_INO))
  return;

 bh = sb_find_get_block(sb, phys);
 if (bh == ((void*)0) || !buffer_uptodate(bh)) {
  for (sec = 0; sec < sbi->sec_per_clus; sec++)
   sb_breadahead(sb, phys + sec);
 }
 brelse(bh);
}
