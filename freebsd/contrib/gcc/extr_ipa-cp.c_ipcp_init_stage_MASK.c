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
struct cgraph_node {struct cgraph_edge* callees; struct cgraph_node* next; } ;
struct cgraph_edge {int /*<<< orphan*/  callee; struct cgraph_edge* next_callee; } ;

/* Variables and functions */
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC0 (struct cgraph_edge*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgraph_edge*) ; 
 scalar_t__ FUNC2 (struct cgraph_edge*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgraph_edge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct cgraph_node*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct cgraph_node*) ; 

__attribute__((used)) static void
FUNC11 (void)
{
  struct cgraph_node *node;
  struct cgraph_edge *cs;

  for (node = cgraph_nodes; node; node = node->next)
    {
      FUNC6 (node);
      FUNC5 (node);
      FUNC10 (node);
      FUNC4 (node);
      FUNC9 (node);
    }
  for (node = cgraph_nodes; node; node = node->next)
    {
      /* building jump functions  */
      for (cs = node->callees; cs; cs = cs->next_callee)
	{
	  FUNC0 (cs);
	  if (FUNC2 (cs)
	      != FUNC7 (cs->callee))
	    {
	      /* Handle cases of functions with 
	         a variable number of parameters.  */
	      FUNC3 (cs, 0);
	      FUNC8 (cs->callee, 0);
	    }
	  else
	    FUNC1 (cs);
	}
    }
}