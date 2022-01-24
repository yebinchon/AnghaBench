#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct df_scan_problem_data {int /*<<< orphan*/  insn_pool; int /*<<< orphan*/  mw_reg_pool; int /*<<< orphan*/  mw_link_pool; } ;
struct df_ref {int dummy; } ;
struct df_mw_hardreg {struct df_ref* uses; struct df_ref* defs; struct df_mw_hardreg* next; struct df_mw_hardreg* regs; struct df_mw_hardreg* mw_hardregs; } ;
struct df_link {struct df_ref* uses; struct df_ref* defs; struct df_link* next; struct df_link* regs; struct df_link* mw_hardregs; } ;
struct df_insn_info {struct df_ref* uses; struct df_ref* defs; struct df_insn_info* next; struct df_insn_info* regs; struct df_insn_info* mw_hardregs; } ;
struct df {unsigned int insns_size; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct df*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct df_mw_hardreg* FUNC1 (struct df*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct df_ref* FUNC3 (struct dataflow*,struct df_ref*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct df_mw_hardreg*) ; 

void 
FUNC5 (struct dataflow *dflow, rtx insn)
{
  struct df *df = dflow->df;
  unsigned int uid = FUNC2 (insn);
  struct df_insn_info *insn_info = NULL;
  struct df_ref *ref;
  struct df_scan_problem_data *problem_data
    = (struct df_scan_problem_data *) dflow->problem_data;

  if (uid < df->insns_size)
    insn_info = FUNC1 (df, uid);

  if (insn_info)
    {
      struct df_mw_hardreg *hardregs = insn_info->mw_hardregs;
      
      while (hardregs)
	{
	  struct df_mw_hardreg *next_hr = hardregs->next;
	  struct df_link *link = hardregs->regs;
	  while (link)
	    {
	      struct df_link *next_l = link->next;
	      FUNC4 (problem_data->mw_link_pool, link);
	      link = next_l;
	    }
	  
	  FUNC4 (problem_data->mw_reg_pool, hardregs);
	  hardregs = next_hr;
	}

      ref = insn_info->defs;
      while (ref) 
	ref = FUNC3 (dflow, ref);
      
      ref = insn_info->uses;
      while (ref) 
	ref = FUNC3 (dflow, ref);

      FUNC4 (problem_data->insn_pool, insn_info);
      FUNC0 (df, insn, NULL);
    }
}