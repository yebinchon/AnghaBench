
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df_ref {struct df_ref* next_ref; } ;
struct df_rd_problem_data {int def_sites; } ;
struct df_rd_bb_info {int gen; int kill; int sparse_kill; } ;
struct df {int dummy; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;
typedef int bitmap ;
struct TYPE_2__ {unsigned int begin; unsigned int n_refs; } ;


 int DF_REF_AT_TOP ;
 int DF_REF_FLAGS (struct df_ref*) ;
 unsigned int DF_REF_ID (struct df_ref*) ;
 int DF_REF_MAY_CLOBBER ;
 int DF_REF_MUST_CLOBBER ;
 int DF_REF_PARTIAL ;
 unsigned int DF_REF_REGNO (struct df_ref*) ;
 TYPE_1__* DF_REG_DEF_GET (struct df*,unsigned int) ;
 unsigned int DF_SPARSE_THRESHOLD ;
 int bitmap_and_compl_into (int ,int ) ;
 int bitmap_bit_p (int ,unsigned int) ;
 int bitmap_clear_range (int ,unsigned int,unsigned int) ;
 int bitmap_ior_into (int ,int ) ;
 int bitmap_set_bit (int ,unsigned int) ;
 int df_ref_bitmap (int ,unsigned int,unsigned int,unsigned int) ;
 int seen_in_block ;
 int seen_in_insn ;

__attribute__((used)) static void
df_rd_bb_local_compute_process_def (struct dataflow *dflow,
        struct df_rd_bb_info *bb_info,
        struct df_ref *def,
        enum df_ref_flags top_flag)
{
  struct df *df = dflow->df;
  while (def)
    {
      if (top_flag == (DF_REF_FLAGS (def) & DF_REF_AT_TOP))
 {
   unsigned int regno = DF_REF_REGNO (def);
   unsigned int begin = DF_REG_DEF_GET (df, regno)->begin;
   unsigned int n_defs = DF_REG_DEF_GET (df, regno)->n_refs;



   if (!bitmap_bit_p (seen_in_block, regno))
     {


       if ((!bitmap_bit_p (seen_in_insn, regno))


    && (!((DF_REF_FLAGS (def) & DF_REF_PARTIAL)
    || (DF_REF_FLAGS (def) & DF_REF_MAY_CLOBBER))))
  {
    if (n_defs > DF_SPARSE_THRESHOLD)
      {
        bitmap_set_bit (bb_info->sparse_kill, regno);
        bitmap_clear_range(bb_info->gen, begin, n_defs);
      }
    else
      {
        struct df_rd_problem_data * problem_data
   = (struct df_rd_problem_data *)dflow->problem_data;
        bitmap defs = df_ref_bitmap (problem_data->def_sites,
         regno, begin, n_defs);
        bitmap_ior_into (bb_info->kill, defs);
        bitmap_and_compl_into (bb_info->gen, defs);
      }
  }

       bitmap_set_bit (seen_in_insn, regno);


       if (!(DF_REF_FLAGS (def)
       & (DF_REF_MUST_CLOBBER | DF_REF_MAY_CLOBBER)))
  bitmap_set_bit (bb_info->gen, DF_REF_ID (def));
     }
 }
      def = def->next_ref;
    }
}
