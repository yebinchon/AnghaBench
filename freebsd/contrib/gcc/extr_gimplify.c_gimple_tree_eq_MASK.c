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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ elt_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (const void *p1, const void *p2)
{
  tree t1 = ((const elt_t *) p1)->val;
  tree t2 = ((const elt_t *) p2)->val;
  enum tree_code code = FUNC0 (t1);

  if (FUNC0 (t2) != code
      || FUNC1 (t1) != FUNC1 (t2))
    return 0;

  if (!FUNC4 (t1, t2, 0))
    return 0;

  /* Only allow them to compare equal if they also hash equal; otherwise
     results are nondeterminate, and we fail bootstrap comparison.  */
  FUNC2 (FUNC3 (p1) == FUNC3 (p2));

  return 1;
}