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
struct loop {int dummy; } ;
typedef  TYPE_1__* edge ;
struct TYPE_6__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 TYPE_1__** FUNC2 (struct loop*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct loop*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

tree
FUNC6 (struct loop *loop, edge *exit)
{
  unsigned n_exits, i;
  edge *exits = FUNC2 (loop, &n_exits);
  edge ex;
  tree niter = NULL_TREE, aniter;

  *exit = NULL;
  for (i = 0; i < n_exits; i++)
    {
      ex = exits[i];
      if (!FUNC3 (loop, ex->src))
	continue;

      aniter = FUNC4 (loop, ex);
      if (FUNC0 (aniter))
	continue;

      if (niter
	  && !FUNC5 (aniter, niter))
	continue;

      niter = aniter;
      *exit = ex;
    }
  FUNC1 (exits);

  return niter ? niter : chrec_dont_know;
}