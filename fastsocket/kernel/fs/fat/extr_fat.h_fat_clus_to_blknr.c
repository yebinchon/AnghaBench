
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int sec_per_clus; int data_start; } ;
typedef int sector_t ;


 int FAT_START_ENT ;

__attribute__((used)) static inline sector_t fat_clus_to_blknr(struct msdos_sb_info *sbi, int clus)
{
 return ((sector_t)clus - FAT_START_ENT) * sbi->sec_per_clus
  + sbi->data_start;
}
