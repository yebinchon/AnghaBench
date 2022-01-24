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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int TUNEMASK ; 
 scalar_t__ XFmode ; 
 int /*<<< orphan*/  ext_80387_constants_init ; 
 int /*<<< orphan*/ * ext_80387_constants_table ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ optimize_size ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int x86_ext_80387_constants ; 

int
FUNC8 (rtx x)
{
  if (FUNC3 (x) != CONST_DOUBLE || !FUNC2 (FUNC4 (x)))
    return -1;

  if (x == FUNC0 (FUNC4 (x)))
    return 1;
  if (x == FUNC1 (FUNC4 (x)))
    return 2;

  /* For XFmode constants, try to find a special 80387 instruction when
     optimizing for size or on those CPUs that benefit from them.  */
  if (FUNC4 (x) == XFmode
      && (optimize_size || x86_ext_80387_constants & TUNEMASK))
    {
      REAL_VALUE_TYPE r;
      int i;

      if (! ext_80387_constants_init)
	FUNC6 ();

      FUNC5 (r, x);
      for (i = 0; i < 5; i++)
        if (FUNC7 (&r, &ext_80387_constants_table[i]))
	  return i + 3;
    }

  return 0;
}