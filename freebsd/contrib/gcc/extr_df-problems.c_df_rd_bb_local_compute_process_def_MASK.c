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
struct df_ref {struct df_ref* next_ref; } ;
struct df_rd_problem_data {int /*<<< orphan*/  def_sites; } ;
struct df_rd_bb_info {int /*<<< orphan*/  gen; int /*<<< orphan*/  kill; int /*<<< orphan*/  sparse_kill; } ;
struct df {int dummy; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef  enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;
typedef  int /*<<< orphan*/  bitmap ;
struct TYPE_2__ {unsigned int begin; unsigned int n_refs; } ;

/* Variables and functions */
 int DF_REF_AT_TOP ; 
 int FUNC0 (struct df_ref*) ; 
 unsigned int FUNC1 (struct df_ref*) ; 
 int DF_REF_MAY_CLOBBER ; 
 int DF_REF_MUST_CLOBBER ; 
 int DF_REF_PARTIAL ; 
 unsigned int FUNC2 (struct df_ref*) ; 
 TYPE_1__* FUNC3 (struct df*,unsigned int) ; 
 unsigned int DF_SPARSE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  seen_in_block ; 
 int /*<<< orphan*/  seen_in_insn ; 

__attribute__((used)) static void
FUNC10 (struct dataflow *dflow,
				    struct df_rd_bb_info *bb_info, 
				    struct df_ref *def,
				    enum df_ref_flags top_flag)
{
  struct df *df = dflow->df;
  while (def)
    {
      if (top_flag == (FUNC0 (def) & DF_REF_AT_TOP))
	{
	  unsigned int regno = FUNC2 (def);
	  unsigned int begin = FUNC3 (df, regno)->begin;
	  unsigned int n_defs = FUNC3 (df, regno)->n_refs;
	  
	  /* Only the last def(s) for a regno in the block has any
	     effect.  */ 
	  if (!FUNC5 (seen_in_block, regno))
	    {
	      /* The first def for regno in insn gets to knock out the
		 defs from other instructions.  */
	      if ((!FUNC5 (seen_in_insn, regno))
		  /* If the def is to only part of the reg, it does
		     not kill the other defs that reach here.  */
		  && (!((FUNC0 (def) & DF_REF_PARTIAL)
			 || (FUNC0 (def) & DF_REF_MAY_CLOBBER))))
		{
		  if (n_defs > DF_SPARSE_THRESHOLD)
		    {
		      FUNC8 (bb_info->sparse_kill, regno);
		      FUNC6(bb_info->gen, begin, n_defs);
		    }
		  else
		    {
		      struct df_rd_problem_data * problem_data
			= (struct df_rd_problem_data *)dflow->problem_data;
		      bitmap defs = FUNC9 (problem_data->def_sites, 
						   regno, begin, n_defs);
		      FUNC7 (bb_info->kill, defs);
		      FUNC4 (bb_info->gen, defs);
		    }
		}
	      
	      FUNC8 (seen_in_insn, regno);
	      /* All defs for regno in the instruction may be put into
		 the gen set.  */
	      if (!(FUNC0 (def) 
		     & (DF_REF_MUST_CLOBBER | DF_REF_MAY_CLOBBER)))
		FUNC8 (bb_info->gen, FUNC1 (def));
	    }
	}
      def = def->next_ref;
    }
}