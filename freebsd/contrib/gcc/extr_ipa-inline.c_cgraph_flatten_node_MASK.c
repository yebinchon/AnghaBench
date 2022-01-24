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
struct TYPE_2__ {scalar_t__ inlinable; } ;
struct cgraph_node {TYPE_1__ local; struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_node* callee; scalar_t__ inline_failed; struct cgraph_edge* next_callee; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgraph_edge*,int) ; 
 char* FUNC1 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*,struct cgraph_node*,scalar_t__*) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cgraph_node*) ; 

__attribute__((used)) static void
FUNC5 (struct cgraph_node *node, htab_t cycles)
{
  struct cgraph_edge *e;

  for (e = node->callees; e; e = e->next_callee)
    {
      /* Inline call, if possible, and recurse.  Be sure we are not
	 entering callgraph circles here.  */
      if (e->inline_failed
	  && e->callee->local.inlinable
	  && !FUNC2 (node, e->callee,
				  	   &e->inline_failed)
	  && !FUNC4 (cycles, e->callee))
	{
	  if (dump_file)
    	    FUNC3 (dump_file, " inlining %s", FUNC1 (e->callee));
          FUNC0 (e, true);
	  FUNC5 (e->callee, cycles);
	}
      else if (dump_file)
	FUNC3 (dump_file, " !inlining %s", FUNC1 (e->callee));
    }
}