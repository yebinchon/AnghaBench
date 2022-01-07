
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent16_p; } ;
struct fat_entry {int fat_inode; int * bhs; TYPE_1__ u; } ;


 int EOF_FAT16 ;
 int FAT_ENT_EOF ;
 int cpu_to_le16 (int) ;
 int mark_buffer_dirty_inode (int ,int ) ;

__attribute__((used)) static void fat16_ent_put(struct fat_entry *fatent, int new)
{
 if (new == FAT_ENT_EOF)
  new = EOF_FAT16;

 *fatent->u.ent16_p = cpu_to_le16(new);
 mark_buffer_dirty_inode(fatent->bhs[0], fatent->fat_inode);
}
