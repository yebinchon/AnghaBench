
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* ent12_p; } ;
struct fat_entry {int nr_bhs; TYPE_1__ u; struct buffer_head** bhs; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void fat12_ent_set_ptr(struct fat_entry *fatent, int offset)
{
 struct buffer_head **bhs = fatent->bhs;
 if (fatent->nr_bhs == 1) {
  WARN_ON(offset >= (bhs[0]->b_size - 1));
  fatent->u.ent12_p[0] = bhs[0]->b_data + offset;
  fatent->u.ent12_p[1] = bhs[0]->b_data + (offset + 1);
 } else {
  WARN_ON(offset != (bhs[0]->b_size - 1));
  fatent->u.ent12_p[0] = bhs[0]->b_data + offset;
  fatent->u.ent12_p[1] = bhs[1]->b_data;
 }
}
