
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int nr_slots; TYPE_1__* de; int * bh; int i_pos; scalar_t__ slot_off; } ;
struct TYPE_3__ {int name; } ;


 int ENOENT ;
 int MSDOS_NAME ;
 scalar_t__ fat_get_short_entry (struct inode*,scalar_t__*,int **,TYPE_1__**) ;
 int fat_make_i_pos (struct super_block*,int *,TYPE_1__*) ;
 int strncmp (int ,unsigned char const*,int ) ;

int fat_scan(struct inode *dir, const unsigned char *name,
      struct fat_slot_info *sinfo)
{
 struct super_block *sb = dir->i_sb;

 sinfo->slot_off = 0;
 sinfo->bh = ((void*)0);
 while (fat_get_short_entry(dir, &sinfo->slot_off, &sinfo->bh,
       &sinfo->de) >= 0) {
  if (!strncmp(sinfo->de->name, name, MSDOS_NAME)) {
   sinfo->slot_off -= sizeof(*sinfo->de);
   sinfo->nr_slots = 1;
   sinfo->i_pos = fat_make_i_pos(sb, sinfo->bh, sinfo->de);
   return 0;
  }
 }
 return -ENOENT;
}
