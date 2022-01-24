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
typedef  int /*<<< orphan*/  tree ;
struct cgraph_node {struct cgraph_node* next; } ;
struct TYPE_2__ {char* (* decl_printable_name ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct cgraph_node*) ; 
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_node*,int) ; 
 TYPE_1__ lang_hooks ; 
 char* FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 

void
FUNC7 (FILE * f)
{
  int i, count;
  tree temp;
  struct cgraph_node *node;

  FUNC2 (f, "\nPARAM TREE MAP PRINT\n");
  for (node = cgraph_nodes; node; node = node->next)
    {
      FUNC2 (f, "method  %s Trees :: \n", FUNC1 (node));
      count = FUNC3 (node);
      for (i = 0; i < count; i++)
	{
	  temp = FUNC4 (node, i);
	  if (FUNC0 (temp) == PARM_DECL)
	    FUNC2 (f, "  param [%d] : %s\n", i,
		     (*lang_hooks.decl_printable_name) (temp, 2));
	}

    }
}