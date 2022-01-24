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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NOT_RELEVANT ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIGN_EXTEND ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int UNKNOWN ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum rtx_code
FUNC10 (rtx extension, enum machine_mode *source_mode)
{
  rtx rhs, lhs, set;

  if (!extension || !FUNC2 (extension))
    return UNKNOWN;

  /* Parallel pattern for extension not supported for the moment.  */
  if (FUNC0 (FUNC3 (extension)) == PARALLEL)
    return NOT_RELEVANT;

  set = FUNC9 (extension);
  if (!set)
    return NOT_RELEVANT;
  rhs = FUNC6 (set);
  lhs = FUNC5 (set);

  /* Don't handle extensions to something other then register or
     subregister.  */
  if (!FUNC4 (lhs) && !FUNC7 (lhs))
    return UNKNOWN;

  if (FUNC0 (rhs) != SIGN_EXTEND && FUNC0 (rhs) != ZERO_EXTEND)
    return UNKNOWN;

  if (!FUNC4 (FUNC8 (rhs, 0))
      && !(FUNC0 (FUNC8 (rhs, 0)) == SUBREG
	   && FUNC4 (FUNC7 (FUNC8 (rhs, 0)))))
    return UNKNOWN;

  *source_mode = FUNC1 (FUNC8 (rhs, 0));

  if (FUNC0 (rhs) == SIGN_EXTEND)
    return SIGN_EXTEND;
  return ZERO_EXTEND;
}