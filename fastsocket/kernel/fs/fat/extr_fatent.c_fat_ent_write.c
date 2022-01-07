
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fatent_operations {int (* ent_put ) (struct fat_entry*,int) ;} ;
struct fat_entry {int nr_bhs; int bhs; } ;
struct TYPE_2__ {struct fatent_operations* fatent_ops; } ;


 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int fat_mirror_bhs (struct super_block*,int ,int ) ;
 int fat_sync_bhs (int ,int ) ;
 int stub1 (struct fat_entry*,int) ;

int fat_ent_write(struct inode *inode, struct fat_entry *fatent,
    int new, int wait)
{
 struct super_block *sb = inode->i_sb;
 struct fatent_operations *ops = MSDOS_SB(sb)->fatent_ops;
 int err;

 ops->ent_put(fatent, new);
 if (wait) {
  err = fat_sync_bhs(fatent->bhs, fatent->nr_bhs);
  if (err)
   return err;
 }
 return fat_mirror_bhs(sb, fatent->bhs, fatent->nr_bhs);
}
