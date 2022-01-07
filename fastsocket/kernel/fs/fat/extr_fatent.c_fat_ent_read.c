
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int max_cluster; struct fatent_operations* fatent_ops; } ;
struct inode {struct super_block* i_sb; } ;
struct fatent_operations {int (* ent_bread ) (struct super_block*,struct fat_entry*,int,int ) ;int (* ent_get ) (struct fat_entry*) ;int (* ent_blocknr ) (struct super_block*,int,int*,int *) ;} ;
struct fat_entry {int dummy; } ;
typedef int sector_t ;


 int EIO ;
 int FAT_START_ENT ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int fat_ent_update_ptr (struct super_block*,struct fat_entry*,int,int ) ;
 int fat_fs_error (struct super_block*,char*,int) ;
 int fatent_brelse (struct fat_entry*) ;
 int fatent_set_entry (struct fat_entry*,int) ;
 int stub1 (struct super_block*,int,int*,int *) ;
 int stub2 (struct super_block*,struct fat_entry*,int,int ) ;
 int stub3 (struct fat_entry*) ;

int fat_ent_read(struct inode *inode, struct fat_entry *fatent, int entry)
{
 struct super_block *sb = inode->i_sb;
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 struct fatent_operations *ops = sbi->fatent_ops;
 int err, offset;
 sector_t blocknr;

 if (entry < FAT_START_ENT || sbi->max_cluster <= entry) {
  fatent_brelse(fatent);
  fat_fs_error(sb, "invalid access to FAT (entry 0x%08x)", entry);
  return -EIO;
 }

 fatent_set_entry(fatent, entry);
 ops->ent_blocknr(sb, entry, &offset, &blocknr);

 if (!fat_ent_update_ptr(sb, fatent, offset, blocknr)) {
  fatent_brelse(fatent);
  err = ops->ent_bread(sb, fatent, offset, blocknr);
  if (err)
   return err;
 }
 return ops->ent_get(fatent);
}
