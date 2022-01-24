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
struct cgraph_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOTTOM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct cgraph_node*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (struct cgraph_node *mt)
{
  int i;
  tree parm_tree;

  FUNC6 (mt);
  for (i = 0; i < FUNC4 (mt); i++)
    {
      parm_tree = FUNC5 (mt, i);
      if (FUNC0 (FUNC3 (parm_tree)) 
	  || FUNC2 (FUNC3 (parm_tree)) 
	  || FUNC1 (FUNC3 (parm_tree)))
	FUNC7 (mt, i, TOP);
      else
	FUNC7 (mt, i, BOTTOM);
    }
}