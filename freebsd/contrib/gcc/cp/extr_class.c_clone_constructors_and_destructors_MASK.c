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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6 (tree t)
{
  tree fns;

  /* If for some reason we don't have a CLASSTYPE_METHOD_VEC, we bail
     out now.  */
  if (!FUNC2 (t))
    return;

  for (fns = FUNC0 (t); fns; fns = FUNC4 (fns))
    FUNC5 (FUNC3 (fns), /*update_method_vec_p=*/1);
  for (fns = FUNC1 (t); fns; fns = FUNC4 (fns))
    FUNC5 (FUNC3 (fns), /*update_method_vec_p=*/1);
}