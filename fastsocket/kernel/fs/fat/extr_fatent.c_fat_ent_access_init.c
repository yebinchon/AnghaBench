
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int fat_bits; int fatent_shift; int * fatent_ops; int fat_lock; } ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int fat12_ops ;
 int fat16_ops ;
 int fat32_ops ;
 int mutex_init (int *) ;

void fat_ent_access_init(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 mutex_init(&sbi->fat_lock);

 switch (sbi->fat_bits) {
 case 32:
  sbi->fatent_shift = 2;
  sbi->fatent_ops = &fat32_ops;
  break;
 case 16:
  sbi->fatent_shift = 1;
  sbi->fatent_ops = &fat16_ops;
  break;
 case 12:
  sbi->fatent_shift = -1;
  sbi->fatent_ops = &fat12_ops;
  break;
 }
}
