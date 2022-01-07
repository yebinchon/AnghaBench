
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent32_p; } ;
struct fat_entry {int fat_inode; int * bhs; TYPE_1__ u; } ;


 int EOF_FAT32 ;
 int FAT_ENT_EOF ;
 int WARN_ON (int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int mark_buffer_dirty_inode (int ,int ) ;

__attribute__((used)) static void fat32_ent_put(struct fat_entry *fatent, int new)
{
 if (new == FAT_ENT_EOF)
  new = EOF_FAT32;

 WARN_ON(new & 0xf0000000);
 new |= le32_to_cpu(*fatent->u.ent32_p) & ~0x0fffffff;
 *fatent->u.ent32_p = cpu_to_le32(new);
 mark_buffer_dirty_inode(fatent->bhs[0], fatent->fat_inode);
}
