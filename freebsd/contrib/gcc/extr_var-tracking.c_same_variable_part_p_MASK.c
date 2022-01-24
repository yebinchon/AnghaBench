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
typedef  int /*<<< orphan*/  rtx ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC8 (rtx loc, tree expr, HOST_WIDE_INT offset)
{
  tree expr2;
  HOST_WIDE_INT offset2;

  if (! FUNC0 (expr))
    return false;

  if (FUNC6 (loc))
    {
      expr2 = FUNC4 (loc);
      offset2 = FUNC5 (loc);
    }
  else if (FUNC3 (loc))
    {
      expr2 = FUNC2 (loc);
      offset2 = FUNC1 (loc);
    }
  else
    return false;

  if (! expr2 || ! FUNC0 (expr2))
    return false;

  expr = FUNC7 (expr);
  expr2 = FUNC7 (expr2);

  return (expr == expr2 && offset == offset2);
}