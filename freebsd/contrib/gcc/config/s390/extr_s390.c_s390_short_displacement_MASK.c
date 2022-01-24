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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_GOT ; 
 scalar_t__ UNSPEC_GOTNTPOFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC4 (rtx disp)
{
  /* No displacement is OK.  */
  if (!disp)
    return true;

  /* Integer displacement in range.  */
  if (FUNC0 (disp) == CONST_INT)
    return FUNC1 (disp) >= 0 && FUNC1 (disp) < 4096;

  /* GOT offset is not OK, the GOT can be large.  */
  if (FUNC0 (disp) == CONST
      && FUNC0 (FUNC2 (disp, 0)) == UNSPEC
      && (FUNC3 (FUNC2 (disp, 0), 1) == UNSPEC_GOT
          || FUNC3 (FUNC2 (disp, 0), 1) == UNSPEC_GOTNTPOFF))
    return false;

  /* All other symbolic constants are literal pool references,
     which are OK as the literal pool must be small.  */
  if (FUNC0 (disp) == CONST)
    return true;

  return false;
}