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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
#define  MINUS_EXPR 130 
#define  MULT_EXPR 129 
#define  PLUS_EXPR 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool 
FUNC5 (enum tree_code code, tree op0, tree op1)
{
  tree op0type = FUNC2 (FUNC1 (op0));
  tree op1type = FUNC2 (FUNC1 (op1));
  if (FUNC0 (op1type))
    return false;
  switch (code)
    {
    case MULT_EXPR:
    case PLUS_EXPR:
    case MINUS_EXPR:
      /* TODO: Handle multiples of op0 size as well */
      if (FUNC3 (FUNC4 (op0type), op1, 0))
	return true;
      /* fallthrough */

    default:
      return false;
    }
  return false;
}