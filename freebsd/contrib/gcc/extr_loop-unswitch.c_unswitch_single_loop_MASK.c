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
struct loops {int dummy; } ;
struct loop {unsigned int num_nodes; int /*<<< orphan*/  header; scalar_t__ inner; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  PARAM_MAX_UNSWITCH_INSNS ; 
 int /*<<< orphan*/  PARAM_MAX_UNSWITCH_LEVEL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const_true_rtx ; 
 scalar_t__ dump_file ; 
 int FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct loop*) ; 
 int /*<<< orphan*/ * FUNC12 (struct loop*) ; 
 int /*<<< orphan*/  FUNC13 (struct loop*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct loop*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct loop*) ; 
 int /*<<< orphan*/  FUNC17 (struct loops*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 struct loop* FUNC20 (struct loops*,struct loop*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC21 (struct loops *loops, struct loop *loop,
		      rtx cond_checked, int num)
{
  basic_block *bbs;
  struct loop *nloop;
  unsigned i;
  rtx cond, rcond = NULL_RTX, conds, rconds, acond, cinsn;
  int repeat;
  edge e;

  /* Do not unswitch too much.  */
  if (num > FUNC2 (PARAM_MAX_UNSWITCH_LEVEL))
    {
      if (dump_file)
	FUNC8 (dump_file, ";; Not unswitching anymore, hit max level\n");
      return;
    }

  /* Only unswitch innermost loops.  */
  if (loop->inner)
    {
      if (dump_file)
	FUNC8 (dump_file, ";; Not unswitching, not innermost loop\n");
      return;
    }

  /* We must be able to duplicate loop body.  */
  if (!FUNC5 (loop))
    {
      if (dump_file)
	FUNC8 (dump_file, ";; Not unswitching, can't duplicate loop\n");
      return;
    }

  /* The loop should not be too large, to limit code growth.  */
  if (FUNC16 (loop) > FUNC2 (PARAM_MAX_UNSWITCH_INSNS))
    {
      if (dump_file)
	FUNC8 (dump_file, ";; Not unswitching, loop too big\n");
      return;
    }

  /* Do not unswitch in cold areas.  */
  if (!FUNC15 (loop->header))
    {
      if (dump_file)
	FUNC8 (dump_file, ";; Not unswitching, not hot area\n");
      return;
    }

  /* Nor if the loop usually does not roll.  */
  if (FUNC7 (loop) < 1)
    {
      if (dump_file)
	FUNC8 (dump_file, ";; Not unswitching, loop iterations < 1\n");
      return;
    }

  do
    {
      repeat = 0;
      cinsn = NULL_RTX;

      /* Find a bb to unswitch on.  */
      bbs = FUNC12 (loop);
      FUNC13 (loop);
      for (i = 0; i < loop->num_nodes; i++)
	if ((cond = FUNC14 (bbs[i], loop, &cinsn)))
	  break;

      if (i == loop->num_nodes)
	{
	  FUNC9 (bbs);
	  return;
	}

      if (cond != const0_rtx
	  && cond != const_true_rtx)
	{
	  rcond = FUNC18 (cond);
	  if (rcond)
	    rcond = FUNC6 (rcond);

	  /* Check whether the result can be predicted.  */
	  for (acond = cond_checked; acond; acond = FUNC3 (acond, 1))
	    FUNC19 (FUNC3 (acond, 0), &cond, NULL);
	}

      if (cond == const_true_rtx)
	{
	  /* Remove false path.  */
	  e = FUNC1 (bbs[i]);
	  FUNC17 (loops, e);
	  FUNC9 (bbs);
	  repeat = 1;
	}
      else if (cond == const0_rtx)
	{
	  /* Remove true path.  */
	  e = FUNC0 (bbs[i]);
	  FUNC17 (loops, e);
	  FUNC9 (bbs);
	  repeat = 1;
	}
    } while (repeat);

  /* We found the condition we can unswitch on.  */
  conds = FUNC4 (0, cond, cond_checked);
  if (rcond)
    rconds = FUNC4 (0, rcond, cond_checked);
  else
    rconds = cond_checked;

  if (dump_file)
    FUNC8 (dump_file, ";; Unswitching loop\n");

  /* Unswitch the loop on this condition.  */
  nloop = FUNC20 (loops, loop, bbs[i], cond, cinsn);
  FUNC11 (nloop);

  /* Invoke itself on modified loops.  */
  FUNC21 (loops, nloop, rconds, num + 1);
  FUNC21 (loops, loop, conds, num + 1);

  FUNC10 (conds);
  if (rcond)
    FUNC10 (rconds);

  FUNC9 (bbs);
}