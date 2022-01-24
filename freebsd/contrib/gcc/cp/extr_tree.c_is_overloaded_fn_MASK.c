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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int
FUNC7 (tree x)
{
  /* A baselink is also considered an overloaded function.  */
  if (FUNC5 (x) == OFFSET_REF
      || FUNC5 (x) == COMPONENT_REF)
    x = FUNC6 (x, 1);
  if (FUNC1 (x))
    x = FUNC0 (x);
  if (FUNC5 (x) == TEMPLATE_ID_EXPR
      || FUNC2 (FUNC4 (x))
      || (FUNC5 (x) == OVERLOAD && FUNC3 (x)))
    return 2;
  return  (FUNC5 (x) == FUNCTION_DECL
	   || FUNC5 (x) == OVERLOAD);
}