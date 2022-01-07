
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct df_scan_bb_info {int * artificial_uses; int * artificial_defs; } ;
struct df_ref {int dummy; } ;
struct TYPE_6__ {int add_refs_inline; } ;
struct df {TYPE_4__ use_info; TYPE_4__ def_info; struct dataflow** problems_by_index; } ;
struct dataflow {int block_pool; } ;
typedef int rtx ;
typedef enum df_ref_type { ____Placeholder_df_ref_type } df_ref_type ;
typedef enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int index; } ;


 int DF_REF_REG_DEF ;
 size_t DF_SCAN ;
 int df_grow_bb_info (struct dataflow*) ;
 int df_grow_reg_info (struct dataflow*,TYPE_4__*) ;
 struct df_ref* df_ref_create_structure (struct dataflow*,int ,int *,TYPE_1__*,int ,int,int) ;
 struct df_scan_bb_info* df_scan_get_bb_info (struct dataflow*,int ) ;
 int df_scan_set_bb_info (struct dataflow*,int ,struct df_scan_bb_info*) ;
 scalar_t__ pool_alloc (int ) ;

struct df_ref *
df_ref_create (struct df *df, rtx reg, rtx *loc, rtx insn,
        basic_block bb,
        enum df_ref_type ref_type,
        enum df_ref_flags ref_flags)
{
  struct dataflow *dflow = df->problems_by_index[DF_SCAN];
  struct df_scan_bb_info *bb_info;

  df_grow_reg_info (dflow, &df->use_info);
  df_grow_reg_info (dflow, &df->def_info);
  df_grow_bb_info (dflow);


  bb_info = df_scan_get_bb_info (dflow, bb->index);
  if (!bb_info)
    {
      bb_info = (struct df_scan_bb_info *) pool_alloc (dflow->block_pool);
      df_scan_set_bb_info (dflow, bb->index, bb_info);
      bb_info->artificial_defs = ((void*)0);
      bb_info->artificial_uses = ((void*)0);
    }

  if (ref_type == DF_REF_REG_DEF)
    df->def_info.add_refs_inline = 1;
  else
    df->use_info.add_refs_inline = 1;

  return df_ref_create_structure (dflow, reg, loc, bb, insn, ref_type, ref_flags);
}
