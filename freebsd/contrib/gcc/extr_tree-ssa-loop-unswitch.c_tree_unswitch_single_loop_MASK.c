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
typedef  int /*<<< orphan*/  tree ;
struct loops {int dummy; } ;
struct loop {unsigned int num_nodes; scalar_t__ inner; } ;
typedef  int /*<<< orphan*/  basic_block ;
typedef  int /*<<< orphan*/  COND_EXPR_COND ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PARAM_MAX_UNSWITCH_INSNS ; 
 int /*<<< orphan*/  PARAM_MAX_UNSWITCH_LEVEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TODO_update_ssa ; 
 int /*<<< orphan*/  boolean_false_node ; 
 int /*<<< orphan*/  boolean_true_node ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (struct loop*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct loop*) ; 
 unsigned int FUNC11 (struct loop*) ; 
 struct loop* FUNC12 (struct loops*,struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC15 (struct loops *loops, struct loop *loop, int num)
{
  basic_block *bbs;
  struct loop *nloop;
  unsigned i;
  tree cond = NULL_TREE, stmt;
  bool changed = false;

  /* Do not unswitch too much.  */
  if (num > FUNC0 (PARAM_MAX_UNSWITCH_LEVEL))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC1 (dump_file, ";; Not unswitching anymore, hit max level\n");
      return false;
    }

  /* Only unswitch innermost loops.  */
  if (loop->inner)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC1 (dump_file, ";; Not unswitching, not innermost loop\n");
      return false;
    }

  /* The loop should not be too large, to limit code growth.  */
  if (FUNC11 (loop)
      > (unsigned) FUNC0 (PARAM_MAX_UNSWITCH_INSNS))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC1 (dump_file, ";; Not unswitching, loop too big\n");
      return false;
    }

  i = 0;
  bbs = FUNC4 (loop);
  
  while (1)
    {
      /* Find a bb to unswitch on.  */
      for (; i < loop->num_nodes; i++)
	if ((cond = FUNC10 (bbs[i], loop)))
	  break;

      if (i == loop->num_nodes)
	{
	  FUNC2 (bbs);
	  return changed;
	}

      cond = FUNC9 (loop, cond);
      stmt = FUNC8 (bbs[i]);
      if (FUNC6 (cond))
	{
	  /* Remove false path.  */
	  COND_EXPR_COND (stmt) = boolean_true_node;
	  changed = true;
	}
      else if (FUNC7 (cond))
	{
	  /* Remove true path.  */
	  COND_EXPR_COND (stmt) = boolean_false_node;
	  changed = true;
	}
      else
	break;

      FUNC14 (stmt);
      i++;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC1 (dump_file, ";; Unswitching loop\n");

  FUNC5 ();
  /* Unswitch the loop on this condition.  */
  nloop = FUNC12 (loops, loop, bbs[i], cond);
  if (!nloop)
    {
      FUNC3 ();
      FUNC2 (bbs);
      return changed;
    }

  /* Update the SSA form after unswitching.  */
  FUNC13 (TODO_update_ssa);
  FUNC3 ();

  /* Invoke itself on modified loops.  */
  FUNC15 (loops, nloop, num + 1);
  FUNC15 (loops, loop, num + 1);
  FUNC2 (bbs);
  return true;
}