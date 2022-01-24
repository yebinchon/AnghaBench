#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {scalar_t__ reg_save_b0; scalar_t__ total_size; int /*<<< orphan*/  mask; scalar_t__ spill_size; scalar_t__ spill_cfa_off; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ current_frame_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC10 (rtx dest)
{
  rtx src;

  if (FUNC4 (current_frame_info.mask, FUNC0 (0)))
    {
      if (current_frame_info.reg_save_b0 != 0)
	src = FUNC9 (DImode, current_frame_info.reg_save_b0);
      else
	{
	  HOST_WIDE_INT off;
	  unsigned int regno;

	  /* Compute offset from CFA for BR0.  */
	  /* ??? Must be kept in sync with ia64_expand_prologue.  */
	  off = (current_frame_info.spill_cfa_off
		 + current_frame_info.spill_size);
	  for (regno = FUNC3 (1); regno <= FUNC3 (31); ++regno)
	    if (FUNC4 (current_frame_info.mask, regno))
	      off -= 8;

	  /* Convert CFA offset to a register based offset.  */
	  if (frame_pointer_needed)
	    src = hard_frame_pointer_rtx;
	  else
	    {
	      src = stack_pointer_rtx;
	      off += current_frame_info.total_size;
	    }

	  /* Load address into scratch register.  */
	  if (FUNC1 (off))
	    FUNC5 (FUNC7 (dest, src, FUNC2 (off)));
	  else
	    {
	      FUNC6 (dest, FUNC2 (off));
	      FUNC5 (FUNC7 (dest, src, dest));
	    }

	  src = FUNC8 (Pmode, dest);
	}
    }
  else
    src = FUNC9 (DImode, FUNC0 (0));

  FUNC6 (dest, src);
}