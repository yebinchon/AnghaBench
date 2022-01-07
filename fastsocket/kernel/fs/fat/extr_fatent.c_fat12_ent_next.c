
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ** ent12_p; } ;
struct fat_entry {int entry; int nr_bhs; struct buffer_head** bhs; TYPE_1__ u; } ;
struct buffer_head {int b_data; int b_size; } ;


 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;

__attribute__((used)) static int fat12_ent_next(struct fat_entry *fatent)
{
 u8 **ent12_p = fatent->u.ent12_p;
 struct buffer_head **bhs = fatent->bhs;
 u8 *nextp = ent12_p[1] + 1 + (fatent->entry & 1);

 fatent->entry++;
 if (fatent->nr_bhs == 1) {
  WARN_ON(ent12_p[0] > (u8 *)(bhs[0]->b_data + (bhs[0]->b_size - 2)));
  WARN_ON(ent12_p[1] > (u8 *)(bhs[0]->b_data + (bhs[0]->b_size - 1)));
  if (nextp < (u8 *)(bhs[0]->b_data + (bhs[0]->b_size - 1))) {
   ent12_p[0] = nextp - 1;
   ent12_p[1] = nextp;
   return 1;
  }
 } else {
  WARN_ON(ent12_p[0] != (u8 *)(bhs[0]->b_data + (bhs[0]->b_size - 1)));
  WARN_ON(ent12_p[1] != (u8 *)bhs[1]->b_data);
  ent12_p[0] = nextp - 1;
  ent12_p[1] = nextp;
  brelse(bhs[0]);
  bhs[0] = bhs[1];
  fatent->nr_bhs = 1;
  return 1;
 }
 ent12_p[0] = ((void*)0);
 ent12_p[1] = ((void*)0);
 return 0;
}
