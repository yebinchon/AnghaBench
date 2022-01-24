#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  src; } ;
struct TYPE_3__ {struct loop* loop_father; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 TYPE_2__* FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ chrec_not_analyzed_yet ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC6 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree 
FUNC9 (tree loop_phi_node)
{
  int i;
  tree init_cond = chrec_not_analyzed_yet;
  struct loop *loop = FUNC4 (loop_phi_node)->loop_father;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "(analyze_initial_condition \n");
      FUNC7 (dump_file, "  (loop_phi_node = \n");
      FUNC8 (dump_file, loop_phi_node, 0);
      FUNC7 (dump_file, ")\n");
    }
  
  for (i = 0; i < FUNC2 (loop_phi_node); i++)
    {
      tree branch = FUNC0 (loop_phi_node, i);
      basic_block bb = FUNC1 (loop_phi_node, i)->src;
      
      /* When the branch is oriented to the loop's body, it does
     	 not contribute to the initial condition.  */
      if (FUNC6 (loop, bb))
       	continue;

      if (init_cond == chrec_not_analyzed_yet)
	{
	  init_cond = branch;
	  continue;
	}

      if (FUNC3 (branch) == SSA_NAME)
	{
	  init_cond = chrec_dont_know;
      	  break;
	}

      init_cond = FUNC5 (init_cond, branch);
    }

  /* Ooops -- a loop without an entry???  */
  if (init_cond == chrec_not_analyzed_yet)
    init_cond = chrec_dont_know;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "  (init_cond = ");
      FUNC8 (dump_file, init_cond, 0);
      FUNC7 (dump_file, "))\n");
    }
  
  return init_cond;
}