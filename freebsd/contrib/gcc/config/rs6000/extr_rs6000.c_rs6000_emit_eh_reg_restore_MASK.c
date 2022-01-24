#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int total_size; scalar_t__ lr_save_offset; scalar_t__ push_p; scalar_t__ lr_save_p; } ;
typedef  TYPE_1__ rs6000_stack_t ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_REGISTER_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ current_function_calls_alloca ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC5 (rtx source, rtx scratch)
{
  rs6000_stack_t *info = FUNC4 ();
  rtx operands[2];

  operands[0] = source;
  operands[1] = scratch;

  if (info->lr_save_p)
    {
      rtx frame_rtx = stack_pointer_rtx;
      HOST_WIDE_INT sp_offset = 0;
      rtx tmp;

      if (frame_pointer_needed
	  || current_function_calls_alloca
	  || info->total_size > 32767)
	{
	  tmp = FUNC1 (Pmode, frame_rtx);
	  FUNC0 (operands[1], tmp);
	  frame_rtx = operands[1];
	}
      else if (info->push_p)
	sp_offset = info->total_size;

      tmp = FUNC3 (frame_rtx, info->lr_save_offset + sp_offset);
      tmp = FUNC1 (Pmode, tmp);
      FUNC0 (tmp, operands[0]);
    }
  else
    FUNC0 (FUNC2 (Pmode, LINK_REGISTER_REGNUM), operands[0]);
}