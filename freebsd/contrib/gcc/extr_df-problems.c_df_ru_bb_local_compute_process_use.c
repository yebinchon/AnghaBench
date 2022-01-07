
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ru_bb_info {int gen; } ;
struct df_ref {struct df_ref* next_ref; } ;
typedef enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;


 int DF_REF_AT_TOP ;
 int DF_REF_FLAGS (struct df_ref*) ;
 int DF_REF_ID (struct df_ref*) ;
 unsigned int DF_REF_REGNO (struct df_ref*) ;
 int bitmap_bit_p (int ,unsigned int) ;
 int bitmap_set_bit (int ,int ) ;
 int seen_in_block ;

__attribute__((used)) static void
df_ru_bb_local_compute_process_use (struct df_ru_bb_info *bb_info,
        struct df_ref *use,
        enum df_ref_flags top_flag)
{
  while (use)
    {
      if (top_flag == (DF_REF_FLAGS (use) & DF_REF_AT_TOP))
 {


   unsigned int regno = DF_REF_REGNO (use);
   if (!bitmap_bit_p (seen_in_block, regno))
     bitmap_set_bit (bb_info->gen, DF_REF_ID (use));
 }
      use = use->next_ref;
    }
}
