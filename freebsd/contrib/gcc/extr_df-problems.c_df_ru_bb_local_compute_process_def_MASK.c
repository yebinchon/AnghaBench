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
struct df_ru_problem_data {int /*<<< orphan*/  use_sites; } ;
struct df_ru_bb_info {int /*<<< orphan*/  kill; int /*<<< orphan*/  sparse_kill; } ;
struct df_ref {struct df_ref* next_ref; } ;
struct df {int dummy; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef  enum df_ref_flags { ____Placeholder_df_ref_flags } df_ref_flags ;
typedef  int /*<<< orphan*/  bitmap ;
struct TYPE_2__ {unsigned int begin; unsigned int n_refs; } ;

/* Variables and functions */
 int DF_REF_AT_TOP ; 
 int FUNC0 (struct df_ref*) ; 
 int DF_REF_PARTIAL ; 
 unsigned int FUNC1 (struct df_ref*) ; 
 TYPE_1__* FUNC2 (struct df*,unsigned int) ; 
 unsigned int DF_SPARSE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  seen_in_block ; 
 int /*<<< orphan*/  seen_in_insn ; 

__attribute__((used)) static void
FUNC7 (struct dataflow *dflow,
				    struct df_ru_bb_info *bb_info, 
				    struct df_ref *def,
				    enum df_ref_flags top_flag)
{
  struct df *df = dflow->df;
  while (def)
    {
      if ((top_flag == (FUNC0 (def) & DF_REF_AT_TOP))
	  /* If the def is to only part of the reg, it is as if it did
	     not happen, since some of the bits may get thru.  */
	  && (!(FUNC0 (def) & DF_REF_PARTIAL)))
	{
	  unsigned int regno = FUNC1 (def);
	  unsigned int begin = FUNC2 (df, regno)->begin;
	  unsigned int n_uses = FUNC2 (df, regno)->n_refs;
	  if (!FUNC3 (seen_in_block, regno))
	    {
	      /* The first def for regno in the insn, causes the kill
		 info to be generated.  Do not modify the gen set
		 because the only values in it are the uses from here
		 to the top of the block and this def does not effect
		 them.  */
	      if (!FUNC3 (seen_in_insn, regno))
		{
		  if (n_uses > DF_SPARSE_THRESHOLD)
		    FUNC5 (bb_info->sparse_kill, regno);
		  else
		    {
		      struct df_ru_problem_data * problem_data
			= (struct df_ru_problem_data *)dflow->problem_data;
		      bitmap uses 
			= FUNC6 (problem_data->use_sites, regno, 
				       begin, n_uses);
		      FUNC4 (bb_info->kill, uses);
		    }
		}
	      FUNC5 (seen_in_insn, regno);
	    }
	}
      def = def->next_ref;
    }
}