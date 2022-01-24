#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loops {int dummy; } ;
struct loop {int num; TYPE_1__* single_exit; } ;
typedef  enum unroll_level { ____Placeholder_unroll_level } unroll_level ;
typedef  TYPE_1__* edge ;
struct TYPE_6__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct loop*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct loops*,struct loop*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC13 (struct loops *loops, struct loop *loop,
				       bool create_iv, enum unroll_level ul,
				       bool try_eval)
{
  edge exit = NULL;
  tree niter;

  niter = FUNC10 (loop);
  if (FUNC0 (niter) == INTEGER_CST)
    {
      exit = loop->single_exit;
      if (!FUNC9 (loop, exit->src))
	return false;

      /* The result of number_of_iterations_in_loop is by one higher than
	 we expect (i.e. it returns number of executions of the exit
	 condition, not of the loop latch edge).  */
      niter = FUNC7 (MINUS_EXPR, FUNC1 (niter), niter,
			   FUNC2 (FUNC1 (niter), 1));
    }
  else
    {
      /* If the loop has more than one exit, try checking all of them
	 for # of iterations determinable through scev.  */
      if (!loop->single_exit)
	niter = FUNC5 (loop, &exit);

      /* Finally if everything else fails, try brute force evaluation.  */
      if (try_eval
	  && (FUNC3 (niter)
	      || FUNC0 (niter) != INTEGER_CST))
	niter = FUNC6 (loop, &exit);

      if (FUNC3 (niter)
	  || FUNC0 (niter) != INTEGER_CST)
	return false;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC8 (dump_file, "Loop %d iterates ", loop->num);
      FUNC11 (dump_file, niter, TDF_SLIM);
      FUNC8 (dump_file, " times.\n");
    }

  if (FUNC12 (loops, loop, exit, niter, ul))
    return true;

  if (create_iv)
    FUNC4 (loop, exit, niter);

  return false;
}