
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int** ent12_p; } ;
struct fat_entry {int entry; int nr_bhs; int fat_inode; int * bhs; TYPE_1__ u; } ;


 int EOF_FAT12 ;
 int FAT_ENT_EOF ;
 int fat12_entry_lock ;
 int mark_buffer_dirty_inode (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fat12_ent_put(struct fat_entry *fatent, int new)
{
 u8 **ent12_p = fatent->u.ent12_p;

 if (new == FAT_ENT_EOF)
  new = EOF_FAT12;

 spin_lock(&fat12_entry_lock);
 if (fatent->entry & 1) {
  *ent12_p[0] = (new << 4) | (*ent12_p[0] & 0x0f);
  *ent12_p[1] = new >> 4;
 } else {
  *ent12_p[0] = new & 0xff;
  *ent12_p[1] = (*ent12_p[1] & 0xf0) | (new >> 8);
 }
 spin_unlock(&fat12_entry_lock);

 mark_buffer_dirty_inode(fatent->bhs[0], fatent->fat_inode);
 if (fatent->nr_bhs == 2)
  mark_buffer_dirty_inode(fatent->bhs[1], fatent->fat_inode);
}
