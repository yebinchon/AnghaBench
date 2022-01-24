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
 int BLKmode ; 
 scalar_t__ MS_AGGREGATE_RETURN ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_MMX ; 
 scalar_t__ TARGET_SSE ; 
 int TDmode ; 
 int TImode ; 
 scalar_t__ FUNC1 (int) ; 
 int XFmode ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (tree type)
{
  int needed_intregs, needed_sseregs, size;
  enum machine_mode mode = FUNC4 (type);

  if (TARGET_64BIT)
    return !FUNC2 (mode, type, 1, &needed_intregs, &needed_sseregs);

  if (mode == BLKmode)
    return 1;

  size = FUNC3 (type);

  if (MS_AGGREGATE_RETURN && FUNC0 (type) && size <= 8)
    return 0;

  if (FUNC1 (mode) || mode == TImode)
    {
      /* User-created vectors small enough to fit in EAX.  */
      if (size < 8)
	return 0;

      /* MMX/3dNow values are returned in MM0,
	 except when it doesn't exits.  */
      if (size == 8)
	return (TARGET_MMX ? 0 : 1);

      /* SSE values are returned in XMM0, except when it doesn't exist.  */
      if (size == 16)
	return (TARGET_SSE ? 0 : 1);
    }

  if (mode == XFmode)
    return 0;

  if (mode == TDmode)
    return 1;

  if (size > 12)
    return 1;
  return 0;
}