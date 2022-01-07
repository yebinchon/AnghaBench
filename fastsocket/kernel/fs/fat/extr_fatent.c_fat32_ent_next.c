
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent32_p; } ;
struct fat_entry {TYPE_1__ u; int entry; struct buffer_head** bhs; } ;
struct buffer_head {int b_data; int b_size; } ;
typedef int __le32 ;



__attribute__((used)) static int fat32_ent_next(struct fat_entry *fatent)
{
 const struct buffer_head *bh = fatent->bhs[0];
 fatent->entry++;
 if (fatent->u.ent32_p < (__le32 *)(bh->b_data + (bh->b_size - 4))) {
  fatent->u.ent32_p++;
  return 1;
 }
 fatent->u.ent32_p = ((void*)0);
 return 0;
}
