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
struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int /*<<< orphan*/  header; } ;
typedef  enum unroll_level { ____Placeholder_unroll_level } unroll_level ;

/* Variables and functions */
 unsigned int TODO_cleanup_cfg ; 
 int UL_ALL ; 
 int UL_NO_GROWTH ; 
 int FUNC0 (struct loops*,struct loop*,int,int,int) ; 
 int /*<<< orphan*/  flag_tree_loop_ivcanon ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

unsigned int
FUNC3 (struct loops *loops, bool may_increase_size)
{
  unsigned i;
  struct loop *loop;
  bool changed = false;
  enum unroll_level ul;

  for (i = 1; i < loops->num; i++)
    {
      loop = loops->parray[i];

      if (!loop)
	continue;

      if (may_increase_size && FUNC1 (loop->header))
	ul = UL_ALL;
      else
	ul = UL_NO_GROWTH;
      changed |= FUNC0 (loops, loop,
							false, ul,
							!flag_tree_loop_ivcanon);
    }

  /* Clean up the information about numbers of iterations, since complete
     unrolling might have invalidated it.  */
  FUNC2 ();

  if (changed)
    return TODO_cleanup_cfg;
  return 0;
}