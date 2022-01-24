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
typedef  scalar_t__ tree ;
struct tree_niter_desc {scalar_t__ niter; int /*<<< orphan*/  may_be_zero; } ;
struct loop {int dummy; } ;
typedef  TYPE_1__* edge ;
struct TYPE_6__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 TYPE_1__** FUNC3 (struct loop*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,TYPE_1__*,struct tree_niter_desc*,int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  unsigned_type_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

tree
FUNC9 (struct loop *loop, edge *exit)
{
  unsigned n_exits, i;
  edge *exits = FUNC3 (loop, &n_exits);
  edge ex;
  tree niter = NULL_TREE, aniter;
  struct tree_niter_desc desc;

  *exit = NULL;
  for (i = 0; i < n_exits; i++)
    {
      ex = exits[i];
      if (!FUNC4 (loop, ex->src))
	continue;

      if (!FUNC6 (loop, ex, &desc, false))
	continue;

      if (FUNC5 (desc.may_be_zero))
	{
	  /* We exit in the first iteration through this exit.
	     We won't find anything better.  */
	  niter = FUNC1 (unsigned_type_node, 0);
	  *exit = ex;
	  break;
	}

      if (!FUNC8 (desc.may_be_zero))
	continue;

      aniter = desc.niter;

      if (!niter)
	{
	  /* Nothing recorded yet.  */
	  niter = aniter;
	  *exit = ex;
	  continue;
	}

      /* Prefer constants, the lower the better.  */
      if (FUNC0 (aniter) != INTEGER_CST)
	continue;

      if (FUNC0 (niter) != INTEGER_CST)
	{
	  niter = aniter;
	  *exit = ex;
	  continue;
	}

      if (FUNC7 (aniter, niter))
	{
	  niter = aniter;
	  *exit = ex;
	  continue;
	}
    }
  FUNC2 (exits);

  return niter ? niter : chrec_dont_know;
}