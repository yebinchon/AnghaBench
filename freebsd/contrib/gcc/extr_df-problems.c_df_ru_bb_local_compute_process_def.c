
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df_ru_problem_data {int use_sites; } ;
struct df_ru_bb_info {int kill; int sparse_kill; } ;
struct df_ref {struct df_ref* next_ref; } ;
struct df {int dummy; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;
typedef int bitmap ;
struct TYPE_2__ {unsigned int begin; unsigned int n_refs; } ;


 int DF_REF_AT_TOP ;
 int DF_REF_FLAGS (struct df_ref*) ;
 int DF_REF_PARTIAL ;
 unsigned int DF_REF_REGNO (struct df_ref*) ;
 TYPE_1__* DF_REG_USE_GET (struct df*,unsigned int) ;
 unsigned int DF_SPARSE_THRESHOLD ;
 int bitmap_bit_p (int ,unsigned int) ;
 int bitmap_ior_into (int ,int ) ;
 int bitmap_set_bit (int ,unsigned int) ;
 int df_ref_bitmap (int ,unsigned int,unsigned int,unsigned int) ;
 int seen_in_block ;
 int seen_in_insn ;

__attribute__((used)) static void
df_ru_bb_local_compute_process_def (struct dataflow *dflow,
        struct df_ru_bb_info *bb_info,
        struct df_ref *def,
        enum df_ref_flags top_flag)
{
  struct df *df = dflow->df;
  while (def)
    {
      if ((top_flag == (DF_REF_FLAGS (def) & DF_REF_AT_TOP))


   && (!(DF_REF_FLAGS (def) & DF_REF_PARTIAL)))
 {
   unsigned int regno = DF_REF_REGNO (def);
   unsigned int begin = DF_REG_USE_GET (df, regno)->begin;
   unsigned int n_uses = DF_REG_USE_GET (df, regno)->n_refs;
   if (!bitmap_bit_p (seen_in_block, regno))
     {





       if (!bitmap_bit_p (seen_in_insn, regno))
  {
    if (n_uses > DF_SPARSE_THRESHOLD)
      bitmap_set_bit (bb_info->sparse_kill, regno);
    else
      {
        struct df_ru_problem_data * problem_data
   = (struct df_ru_problem_data *)dflow->problem_data;
        bitmap uses
   = df_ref_bitmap (problem_data->use_sites, regno,
           begin, n_uses);
        bitmap_ior_into (bb_info->kill, uses);
      }
  }
       bitmap_set_bit (seen_in_insn, regno);
     }
 }
      def = def->next_ref;
    }
}
