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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ STRING_CST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (tree exp)
{
  FUNC0 (exp);

  if (FUNC1 (exp) != ADDR_EXPR)
    return false;

  exp = FUNC5 (FUNC2 (exp, 0));
  if (!exp)
    return false;

  /* Make sure we call decl_readonly_section only for trees it
     can handle (since it returns true for everything it doesn't
     understand).  */
  if (FUNC1 (exp) == STRING_CST
      || FUNC1 (exp) == CONSTRUCTOR
      || (FUNC1 (exp) == VAR_DECL && FUNC3 (exp)))
    return FUNC4 (exp, 0);
  else
    return false;
}