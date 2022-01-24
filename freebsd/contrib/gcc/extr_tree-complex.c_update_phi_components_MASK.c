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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  basic_block ;
typedef  int /*<<< orphan*/ * SSA_NAME_DEF_STMT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (basic_block bb)
{
  tree phi;

  for (phi = FUNC10 (bb); phi; phi = FUNC1 (phi))
    if (FUNC9 (FUNC3 (phi)))
      {
	tree lr, li, pr = NULL, pi = NULL;
	unsigned int i, n;

	lr = FUNC8 (FUNC3 (phi), false);
	if (FUNC5 (lr) == SSA_NAME)
	  {
	    pr = FUNC6 (lr, bb);
	    SSA_NAME_DEF_STMT (lr) = pr;
	  }

	li = FUNC8 (FUNC3 (phi), true);
	if (FUNC5 (li) == SSA_NAME)
	  {
	    pi = FUNC6 (li, bb);
	    SSA_NAME_DEF_STMT (li) = pi;
	  }
	
	for (i = 0, n = FUNC2 (phi); i < n; ++i)
	  {
	    tree comp, arg = FUNC0 (phi, i);
	    if (pr)
	      {
		comp = FUNC7 (NULL, arg, false, false);
		FUNC4 (pr, i, comp);
	      }
	    if (pi)
	      {
		comp = FUNC7 (NULL, arg, true, false);
		FUNC4 (pi, i, comp);
	      }
	  }
      }
}