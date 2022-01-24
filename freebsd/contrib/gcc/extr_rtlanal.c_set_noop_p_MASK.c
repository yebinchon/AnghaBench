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

/* Variables and functions */
 int /*<<< orphan*/  BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ ZERO_EXTRACT ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ pc_rtx ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

int
FUNC11 (rtx set)
{
  rtx src = FUNC5 (set);
  rtx dst = FUNC4 (set);

  if (dst == pc_rtx && src == pc_rtx)
    return 1;

  if (FUNC1 (dst) && FUNC1 (src))
    return FUNC9 (dst, src) && !FUNC10 (dst);

  if (FUNC0 (dst) == ZERO_EXTRACT)
    return FUNC9 (FUNC8 (dst, 0), src)
	   && ! BYTES_BIG_ENDIAN && FUNC8 (dst, 2) == const0_rtx
	   && !FUNC10 (src);

  if (FUNC0 (dst) == STRICT_LOW_PART)
    dst = FUNC8 (dst, 0);

  if (FUNC0 (src) == SUBREG && FUNC0 (dst) == SUBREG)
    {
      if (FUNC6 (src) != FUNC6 (dst))
	return 0;
      src = FUNC7 (src);
      dst = FUNC7 (dst);
    }

  return (FUNC3 (src) && FUNC3 (dst)
	  && FUNC2 (src) == FUNC2 (dst));
}