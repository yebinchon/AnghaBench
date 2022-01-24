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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ SIGN_EXTEND ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTEND ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static rtx
FUNC8 (rtx extension, bool return_dest_reg)
{
  rtx set, rhs, lhs;
  rtx reg1 = NULL;
  rtx reg2 = NULL;

  /* Parallel pattern for extension not supported for the moment.  */
  if (FUNC0 (FUNC1 (extension)) == PARALLEL)
    return NULL;

  set = FUNC7 (extension);
  if (!set)
    return NULL;
  lhs = FUNC3 (set);
  rhs = FUNC4 (set);

  if (FUNC2 (lhs))
    reg1 = lhs;
  else if (FUNC2 (FUNC5 (lhs)))
    reg1 = FUNC5 (lhs);
  else
    return NULL;

  if (FUNC0 (rhs) != SIGN_EXTEND && FUNC0 (rhs) != ZERO_EXTEND)
    return NULL;

  rhs = FUNC6 (rhs, 0);
  if (FUNC2 (rhs))
    reg2 = rhs;
  else if (FUNC2 (FUNC5 (rhs)))
    reg2 = FUNC5 (rhs);
  else
    return NULL;

  if (return_dest_reg)
    return reg1;
  return reg2;
}