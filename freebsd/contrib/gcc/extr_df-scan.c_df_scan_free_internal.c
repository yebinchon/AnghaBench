
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df_scan_problem_data {int mw_link_pool; int mw_reg_pool; int reg_pool; int insn_pool; int ref_pool; } ;
struct df_ref_info {int dummy; } ;
struct TYPE_2__ {int * refs; int * regs; } ;
struct df {int exit_block_uses; int entry_block_defs; int hardware_regs_used; scalar_t__ insns_size; int * insns; TYPE_1__ use_info; TYPE_1__ def_info; } ;
struct dataflow {int block_pool; scalar_t__ block_info_size; int * block_info; scalar_t__ problem_data; struct df* df; } ;


 int BITMAP_FREE (int ) ;
 int free (int *) ;
 int free_alloc_pool (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
df_scan_free_internal (struct dataflow *dflow)
{
  struct df *df = dflow->df;
  struct df_scan_problem_data *problem_data
    = (struct df_scan_problem_data *) dflow->problem_data;

  free (df->def_info.regs);
  free (df->def_info.refs);
  memset (&df->def_info, 0, (sizeof (struct df_ref_info)));

  free (df->use_info.regs);
  free (df->use_info.refs);
  memset (&df->use_info, 0, (sizeof (struct df_ref_info)));

  free (df->insns);
  df->insns = ((void*)0);
  df->insns_size = 0;

  free (dflow->block_info);
  dflow->block_info = ((void*)0);
  dflow->block_info_size = 0;

  BITMAP_FREE (df->hardware_regs_used);
  BITMAP_FREE (df->entry_block_defs);
  BITMAP_FREE (df->exit_block_uses);

  free_alloc_pool (dflow->block_pool);
  free_alloc_pool (problem_data->ref_pool);
  free_alloc_pool (problem_data->insn_pool);
  free_alloc_pool (problem_data->reg_pool);
  free_alloc_pool (problem_data->mw_reg_pool);
  free_alloc_pool (problem_data->mw_link_pool);
}
