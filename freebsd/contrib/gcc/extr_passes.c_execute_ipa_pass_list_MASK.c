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
struct tree_opt_pass {struct tree_opt_pass* next; scalar_t__ sub; } ;
struct cgraph_node {int /*<<< orphan*/ * decl; scalar_t__ analyzed; struct cgraph_node* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/ * current_function_decl ; 
 scalar_t__ FUNC1 (struct tree_opt_pass*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (struct tree_opt_pass *pass)
{
  do
    {
      if (FUNC1 (pass) && pass->sub)
	{
	  struct cgraph_node *node;
	  for (node = cgraph_nodes; node; node = node->next)
	    if (node->analyzed)
	      {
		FUNC6 (FUNC0 (node->decl));
		current_function_decl = node->decl;
		FUNC2 (pass->sub);
		FUNC3 (CDI_DOMINATORS);
		FUNC3 (CDI_POST_DOMINATORS);
		current_function_decl = NULL;
		FUNC5 ();
		FUNC4 ();
	      }
	}
      pass = pass->next;
    }
  while (pass);
}