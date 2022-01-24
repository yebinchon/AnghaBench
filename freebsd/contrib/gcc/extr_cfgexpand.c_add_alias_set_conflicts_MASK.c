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
struct TYPE_2__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* stack_vars ; 
 size_t stack_vars_num ; 

__attribute__((used)) static void
FUNC5 (void)
{
  size_t i, j, n = stack_vars_num;

  for (i = 0; i < n; ++i)
    {
      tree type_i = FUNC1 (stack_vars[i].decl);
      bool aggr_i = FUNC0 (type_i);
      bool contains_union;

      contains_union = FUNC3 (type_i);
      for (j = 0; j < i; ++j)
	{
	  tree type_j = FUNC1 (stack_vars[j].decl);
	  bool aggr_j = FUNC0 (type_j);
	  if (aggr_i != aggr_j
	      /* Either the objects conflict by means of type based
		 aliasing rules, or we need to add a conflict.  */
	      || !FUNC4 (type_i, type_j)
	      /* In case the types do not conflict ensure that access
		 to elements will conflict.  In case of unions we have
		 to be careful as type based aliasing rules may say
		 access to the same memory does not conflict.  So play
		 safe and add a conflict in this case.  */
	      || contains_union)
	    FUNC2 (i, j);
	}
    }
}