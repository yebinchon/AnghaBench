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
struct cgraph_node {struct cgraph_node* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOTTOM ; 
 scalar_t__ TOP ; 
 struct cgraph_node* cgraph_nodes ; 
 int FUNC0 (struct cgraph_node*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cgraph_node*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (void)
{
  int i, count;
  struct cgraph_node *node;
  bool prop_again;

  prop_again = false;
  for (node = cgraph_nodes; node; node = node->next)
    {
      count = FUNC0 (node);
      for (i = 0; i < count; i++)
	if (FUNC1 (FUNC2 (node, i)) == TOP)
	  {
	    prop_again = true;
	    FUNC3 (node, i, BOTTOM);
	  }
    }
  return prop_again;
}