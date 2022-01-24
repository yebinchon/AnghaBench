#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_map ;
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  coalesce_list_p ;
struct TYPE_3__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 TYPE_1__* EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ RESULT_DECL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC7 (var_map map, coalesce_list_p cl)
{
  unsigned int i, x;
  tree var = NULL;

  for (i = x = 0; x < FUNC5 (map); x++)
    {
      tree p = FUNC6 (map, x);
      if (FUNC1 (FUNC0 (p)) == RESULT_DECL)
	{
	  if (var == NULL_TREE)
	    {
	      var = p;
	      i = x;
	    }
	  else
	    FUNC2 (cl, i, x,
			  FUNC3 (EXIT_BLOCK_PTR->frequency,
					 FUNC4 (EXIT_BLOCK_PTR),
					 false));
	}
    }
}