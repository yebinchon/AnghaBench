
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent16_p; } ;
struct fat_entry {TYPE_1__ u; int entry; struct buffer_head** bhs; } ;
struct buffer_head {int b_data; int b_size; } ;
typedef int __le16 ;



__attribute__((used)) static int fat16_ent_next(struct fat_entry *fatent)
{
 const struct buffer_head *bh = fatent->bhs[0];
 fatent->entry++;
 if (fatent->u.ent16_p < (__le16 *)(bh->b_data + (bh->b_size - 2))) {
  fatent->u.ent16_p++;
  return 1;
 }
 fatent->u.ent16_p = ((void*)0);
 return 0;
}
