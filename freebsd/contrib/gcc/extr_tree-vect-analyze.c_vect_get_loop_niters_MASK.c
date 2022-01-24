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
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct loop*) ; 
 scalar_t__ FUNC2 (struct loop*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (struct loop *loop, tree *number_of_iterations)
{
  tree niters;

  if (FUNC4 (REPORT_DETAILS))
    FUNC0 (vect_dump, "=== get_loop_niters ===");

  niters = FUNC2 (loop);

  if (niters != NULL_TREE
      && niters != chrec_dont_know)
    {
      *number_of_iterations = niters;

      if (FUNC4 (REPORT_DETAILS))
	{
	  FUNC0 (vect_dump, "==> get_loop_niters:" );
	  FUNC3 (vect_dump, *number_of_iterations, TDF_SLIM);
	}
    }

  return FUNC1 (loop);
}