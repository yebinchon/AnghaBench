
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct msdos_sb_info {int fat_bits; struct fatent_operations* fatent_ops; } ;
struct fatent_operations {int (* ent_set_ptr ) (struct fat_entry*,int) ;} ;
struct fat_entry {int nr_bhs; struct buffer_head** bhs; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef scalar_t__ sector_t ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int stub1 (struct fat_entry*,int) ;

__attribute__((used)) static inline int fat_ent_update_ptr(struct super_block *sb,
         struct fat_entry *fatent,
         int offset, sector_t blocknr)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 struct fatent_operations *ops = sbi->fatent_ops;
 struct buffer_head **bhs = fatent->bhs;


 if (!fatent->nr_bhs || bhs[0]->b_blocknr != blocknr)
  return 0;
 if (sbi->fat_bits == 12) {
  if ((offset + 1) < sb->s_blocksize) {

   if (fatent->nr_bhs == 2) {
    brelse(bhs[1]);
    fatent->nr_bhs = 1;
   }
  } else {

   if (fatent->nr_bhs != 2)
    return 0;
   if (bhs[1]->b_blocknr != (blocknr + 1))
    return 0;
  }
 }
 ops->ent_set_ptr(fatent, offset);
 return 1;
}
