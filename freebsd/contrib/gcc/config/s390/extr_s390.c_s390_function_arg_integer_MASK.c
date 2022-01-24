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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ OFFSET_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ TARGET_SOFT_FLOAT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (enum machine_mode mode, tree type)
{
  int size = FUNC8 (mode, type);
  if (size > 8)
    return false;

  /* No type info available for some library calls ...  */
  if (!type)
    return FUNC1 (mode) == MODE_INT
	   || (TARGET_SOFT_FLOAT &&  FUNC4 (mode));

  /* We accept small integral (and similar) types.  */
  if (FUNC2 (type)
      || FUNC3 (type)
      || FUNC5 (type) == OFFSET_TYPE
      || (TARGET_SOFT_FLOAT && FUNC5 (type) == REAL_TYPE))
    return true;

  /* We also accept structs of size 1, 2, 4, 8 that are not
     passed in floating-point registers.  */
  if (FUNC0 (type)
      && FUNC6 (size) >= 0
      && !FUNC7 (mode, type))
    return true;

  return false;
}