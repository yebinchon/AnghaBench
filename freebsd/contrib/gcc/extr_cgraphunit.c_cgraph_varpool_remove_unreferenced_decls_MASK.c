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
struct cgraph_varpool_node {scalar_t__ force_output; scalar_t__ finalized; scalar_t__ needed; struct cgraph_varpool_node* next_needed; int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_varpool_node*) ; 
 struct cgraph_varpool_node* cgraph_varpool_nodes_queue ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct cgraph_varpool_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ sorrycount ; 

__attribute__((used)) static void
FUNC9 (void)
{
  struct cgraph_varpool_node *next, *node = cgraph_varpool_nodes_queue;

  FUNC6 ();

  if (errorcount || sorrycount)
    return;

  while (node)
    {
      tree decl = node->decl;
      next = node->next_needed;
      node->needed = 0;

      if (node->finalized
	  && ((FUNC1 (decl)
	       && FUNC3 (FUNC0 (decl)))
	      || node->force_output
	      || FUNC7 (node, decl)
	      /* ??? Cgraph does not yet rule the world with an iron hand,
		 and does not control the emission of debug information.
		 After a variable has its DECL_RTL set, we must assume that
		 it may be referenced by the debug information, and we can
		 no longer elide it.  */
	      || FUNC2 (decl)))
	FUNC5 (node);

      node = next;
    }
  /* Make sure we mark alias targets as used targets.  */
  FUNC8 ();
  FUNC4 ();
}