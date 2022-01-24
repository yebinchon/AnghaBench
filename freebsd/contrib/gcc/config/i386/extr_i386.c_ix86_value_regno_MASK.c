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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int DFmode ; 
 int FIRST_FLOAT_REG ; 
 int FIRST_MMX_REG ; 
 int FIRST_SSE_REG ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SFmode ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_FLOAT_RETURNS_IN_80387 ; 
 scalar_t__ TARGET_MMX ; 
 scalar_t__ TARGET_SSE ; 
 int TImode ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (enum machine_mode mode, tree func, tree fntype)
{
  FUNC4 (!TARGET_64BIT);

  /* 8-byte vector modes in %mm0. See ix86_return_in_memory for where
     we normally prevent this case when mmx is not available.  However
     some ABIs may require the result to be returned like DImode.  */
  if (FUNC3 (mode) && FUNC1 (mode) == 8)
    return TARGET_MMX ? FIRST_MMX_REG : 0;

  /* 16-byte vector modes in %xmm0.  See ix86_return_in_memory for where
     we prevent this case when sse is not available.  However some ABIs
     may require the result to be returned like integer TImode.  */
  if (mode == TImode || (FUNC3 (mode) && FUNC1 (mode) == 16))
    return TARGET_SSE ? FIRST_SSE_REG : 0;

  /* Decimal floating point values can go in %eax, unlike other float modes.  */
  if (FUNC0 (mode))
    return 0;

  /* Most things go in %eax, except (unless -mno-fp-ret-in-387) fp values.  */
  if (!FUNC2 (mode) || !TARGET_FLOAT_RETURNS_IN_80387)
    return 0;

  /* Floating point return values in %st(0), except for local functions when
     SSE math is enabled or for functions with sseregparm attribute.  */
  if ((func || fntype)
      && (mode == SFmode || mode == DFmode))
    {
      int sse_level = FUNC5 (fntype, func);
      if ((sse_level >= 1 && mode == SFmode)
	  || (sse_level == 2 && mode == DFmode))
        return FIRST_SSE_REG;
    }

  return FIRST_FLOAT_REG;
}