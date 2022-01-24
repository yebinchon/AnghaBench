#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct df_scan_bb_info {int /*<<< orphan*/ * artificial_uses; int /*<<< orphan*/ * artificial_defs; } ;
struct df_ref {int dummy; } ;
struct TYPE_6__ {int add_refs_inline; } ;
struct df {TYPE_4__ use_info; TYPE_4__ def_info; struct dataflow** problems_by_index; } ;
struct dataflow {int /*<<< orphan*/  block_pool; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum df_ref_type { ____Placeholder_df_ref_type } df_ref_type ;
typedef  enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int DF_REF_REG_DEF ; 
 size_t DF_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct dataflow*) ; 
 int /*<<< orphan*/  FUNC1 (struct dataflow*,TYPE_4__*) ; 
 struct df_ref* FUNC2 (struct dataflow*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 struct df_scan_bb_info* FUNC3 (struct dataflow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dataflow*,int /*<<< orphan*/ ,struct df_scan_bb_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

struct df_ref *
FUNC6 (struct df *df, rtx reg, rtx *loc, rtx insn, 
	       basic_block bb,
	       enum df_ref_type ref_type, 
	       enum df_ref_flags ref_flags)
{
  struct dataflow *dflow = df->problems_by_index[DF_SCAN];
  struct df_scan_bb_info *bb_info;
  
  FUNC1 (dflow, &df->use_info);
  FUNC1 (dflow, &df->def_info);
  FUNC0 (dflow);
  
  /* Make sure there is the bb_info for this block.  */
  bb_info = FUNC3 (dflow, bb->index);
  if (!bb_info)
    {
      bb_info = (struct df_scan_bb_info *) FUNC5 (dflow->block_pool);
      FUNC4 (dflow, bb->index, bb_info);
      bb_info->artificial_defs = NULL;
      bb_info->artificial_uses = NULL;
    }

  if (ref_type == DF_REF_REG_DEF)
    df->def_info.add_refs_inline = true;
  else
    df->use_info.add_refs_inline = true;
  
  return FUNC2 (dflow, reg, loc, bb, insn, ref_type, ref_flags);
}