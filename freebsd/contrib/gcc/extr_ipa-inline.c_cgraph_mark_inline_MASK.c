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
struct cgraph_node {struct cgraph_edge* callers; } ;
struct cgraph_edge {scalar_t__ inline_failed; struct cgraph_node* caller; struct cgraph_edge* next_caller; struct cgraph_node* callee; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgraph_edge*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static struct cgraph_edge *
FUNC2 (struct cgraph_edge *edge)
{
  struct cgraph_node *to = edge->caller;
  struct cgraph_node *what = edge->callee;
  struct cgraph_edge *e, *next;
  int times = 0;

  /* Look for all calls, mark them inline and clone recursively
     all inlined functions.  */
  for (e = what->callers; e; e = next)
    {
      next = e->next_caller;
      if (e->caller == to && e->inline_failed)
	{
          FUNC0 (e, true);
	  if (e == edge)
	    edge = next;
	  times++;
	}
    }
  FUNC1 (times);
  return edge;
}