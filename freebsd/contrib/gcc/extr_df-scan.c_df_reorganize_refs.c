
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_reg_info {unsigned int begin; int n_refs; struct df_ref* reg_chain; } ;
struct df_ref_info {unsigned int regs_inited; int refs_organized; int refs_size; int bitmap_size; int add_refs_inline; struct df_ref** refs; struct df_reg_info** regs; } ;
struct df_ref {int dummy; } ;
typedef int DF_REF_ID ;


 int DF_REF_NEXT_REG (int ) ;
 int df_grow_ref_info (struct df_ref_info*,int) ;

void
df_reorganize_refs (struct df_ref_info *ref_info)
{
  unsigned int m = ref_info->regs_inited;
  unsigned int regno;
  unsigned int offset = 0;
  unsigned int size = 0;

  if (ref_info->refs_organized)
    return;

  if (ref_info->refs_size < ref_info->bitmap_size)
    {
      int new_size = ref_info->bitmap_size + ref_info->bitmap_size / 4;
      df_grow_ref_info (ref_info, new_size);
    }

  for (regno = 0; regno < m; regno++)
    {
      struct df_reg_info *reg_info = ref_info->regs[regno];
      int count = 0;
      if (reg_info)
 {
   struct df_ref *ref = reg_info->reg_chain;
   reg_info->begin = offset;
   while (ref)
     {
       ref_info->refs[offset] = ref;
       DF_REF_ID (ref) = offset++;
       ref = DF_REF_NEXT_REG (ref);
       count++;
       size++;
     }
   reg_info->n_refs = count;
 }
    }




  ref_info->bitmap_size = size;
  ref_info->refs_organized = 1;
  ref_info->add_refs_inline = 1;
}
