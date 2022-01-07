
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct msdos_sb_info {int fatent_shift; int max_cluster; scalar_t__ fat_start; } ;
typedef scalar_t__ sector_t ;


 int FAT_START_ENT ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int WARN_ON (int) ;

__attribute__((used)) static void fat_ent_blocknr(struct super_block *sb, int entry,
       int *offset, sector_t *blocknr)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 int bytes = (entry << sbi->fatent_shift);
 WARN_ON(entry < FAT_START_ENT || sbi->max_cluster <= entry);
 *offset = bytes & (sb->s_blocksize - 1);
 *blocknr = sbi->fat_start + (bytes >> sb->s_blocksize_bits);
}
