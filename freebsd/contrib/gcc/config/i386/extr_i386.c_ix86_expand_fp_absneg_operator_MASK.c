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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int ABS ; 
 int /*<<< orphan*/  AND ; 
 int /*<<< orphan*/  CCmode ; 
 int /*<<< orphan*/  FLAGS_REG ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int NEG ; 
 scalar_t__ NULL_RTX ; 
 int FUNC2 (int) ; 
 scalar_t__ TARGET_SSE_MATH ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  XOR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int,int,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int,int,int) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

void
FUNC18 (enum rtx_code code, enum machine_mode mode,
				rtx operands[])
{
  rtx mask, set, use, clob, dst, src;
  bool matching_memory;
  bool use_sse = false;
  bool vector_mode = FUNC3 (mode);
  enum machine_mode elt_mode = mode;

  if (vector_mode)
    {
      elt_mode = FUNC0 (mode);
      use_sse = true;
    }
  else if (TARGET_SSE_MATH)
    use_sse = FUNC2 (mode);

  /* NEG and ABS performed with SSE use bitwise mask operations.
     Create the appropriate mask now.  */
  if (use_sse)
    mask = FUNC16 (elt_mode, vector_mode, code == ABS);
  else
    mask = NULL_RTX;

  dst = operands[0];
  src = operands[1];

  /* If the destination is memory, and we don't have matching source
     operands or we're using the x87, do things in registers.  */
  matching_memory = false;
  if (FUNC1 (dst))
    {
      if (use_sse && FUNC17 (dst, src))
	matching_memory = true;
      else
	dst = FUNC7 (mode);
    }
  if (FUNC1 (src) && !matching_memory)
    src = FUNC6 (mode, src);

  if (vector_mode)
    {
      set = FUNC15 (code == NEG ? XOR : AND, mode, src, mask);
      set = FUNC12 (VOIDmode, dst, set);
      FUNC4 (set);
    }
  else
    {
      set = FUNC14 (code, mode, src);
      set = FUNC12 (VOIDmode, dst, set);
      if (mask)
        {
          use = FUNC13 (VOIDmode, mask);
          clob = FUNC9 (VOIDmode, FUNC11 (CCmode, FLAGS_REG));
          FUNC4 (FUNC10 (VOIDmode,
				       FUNC8 (3, set, use, clob)));
        }
      else
	FUNC4 (set);
    }

  if (dst != operands[0])
    FUNC5 (operands[0], dst);
}