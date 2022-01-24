#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct df_scan_problem_data {int /*<<< orphan*/  mw_link_pool; int /*<<< orphan*/  mw_reg_pool; int /*<<< orphan*/  reg_pool; int /*<<< orphan*/  insn_pool; int /*<<< orphan*/  ref_pool; } ;
struct df_ref_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * refs; int /*<<< orphan*/ * regs; } ;
struct df {int /*<<< orphan*/  exit_block_uses; int /*<<< orphan*/  entry_block_defs; int /*<<< orphan*/  hardware_regs_used; scalar_t__ insns_size; int /*<<< orphan*/ * insns; TYPE_1__ use_info; TYPE_1__ def_info; } ;
struct dataflow {int /*<<< orphan*/  block_pool; scalar_t__ block_info_size; int /*<<< orphan*/ * block_info; scalar_t__ problem_data; struct df* df; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void 
FUNC4 (struct dataflow *dflow)
{
  struct df *df = dflow->df;
  struct df_scan_problem_data *problem_data
    = (struct df_scan_problem_data *) dflow->problem_data;

  FUNC1 (df->def_info.regs);
  FUNC1 (df->def_info.refs);
  FUNC3 (&df->def_info, 0, (sizeof (struct df_ref_info)));

  FUNC1 (df->use_info.regs);
  FUNC1 (df->use_info.refs);
  FUNC3 (&df->use_info, 0, (sizeof (struct df_ref_info)));

  FUNC1 (df->insns);
  df->insns = NULL;
  df->insns_size = 0;

  FUNC1 (dflow->block_info);
  dflow->block_info = NULL;
  dflow->block_info_size = 0;

  FUNC0 (df->hardware_regs_used);
  FUNC0 (df->entry_block_defs);
  FUNC0 (df->exit_block_uses);

  FUNC2 (dflow->block_pool);
  FUNC2 (problem_data->ref_pool);
  FUNC2 (problem_data->insn_pool);
  FUNC2 (problem_data->reg_pool);
  FUNC2 (problem_data->mw_reg_pool);
  FUNC2 (problem_data->mw_link_pool);
}