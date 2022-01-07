
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_entry {int dummy; } ;
typedef int splay_tree ;
typedef int htab_t ;


 int DF_DEFS_SIZE (int ) ;
 int DF_DU_CHAIN ;
 int DF_EQUIV_NOTES ;
 int DF_HARD_REGS ;
 int DF_SUBREGS ;
 int DF_UD_CHAIN ;
 int DF_USES_SIZE (int ) ;
 void* def_entry ;
 int defs_num ;
 int df ;
 int df_analyze (int ) ;
 int df_chain_add_problem (int ,int) ;
 int df_dump (int ,scalar_t__) ;
 int df_init (int) ;
 int df_rd_add_problem (int ,int ) ;
 scalar_t__ dump_file ;
 int eq_descriptor_pre_extension ;
 int hash_del_pre_extension ;
 int hash_descriptor_pre_extension ;
 int htab_create (int,int ,int ,int ) ;
 int last_basic_block ;
 int last_bb ;
 void* see_bb_hash_ar ;
 void* see_bb_splay_ar ;
 int see_pre_extension_hash ;
 void* use_entry ;
 int uses_num ;
 void* xcalloc (int ,int) ;

__attribute__((used)) static void
see_initialize_data_structures (void)
{

  df = df_init (DF_HARD_REGS | DF_EQUIV_NOTES | DF_SUBREGS);
  df_rd_add_problem (df, 0);
  df_chain_add_problem (df, DF_DU_CHAIN | DF_UD_CHAIN);
  df_analyze (df);

  if (dump_file)
    df_dump (df, dump_file);


  last_bb = last_basic_block;

  uses_num = DF_USES_SIZE (df);

  defs_num = DF_DEFS_SIZE (df);


  def_entry = xcalloc (defs_num, sizeof (struct web_entry));
  use_entry = xcalloc (uses_num, sizeof (struct web_entry));



  see_bb_splay_ar = xcalloc (last_bb, sizeof (splay_tree));



  see_bb_hash_ar = xcalloc (last_bb, sizeof (htab_t));



  see_pre_extension_hash = htab_create (10,
     hash_descriptor_pre_extension,
     eq_descriptor_pre_extension,
     hash_del_pre_extension);
}
