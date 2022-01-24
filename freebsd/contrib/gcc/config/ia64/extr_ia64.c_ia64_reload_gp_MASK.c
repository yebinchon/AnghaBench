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
struct TYPE_2__ {scalar_t__ total_size; scalar_t__ spill_size; scalar_t__ spill_cfa_off; scalar_t__ reg_save_gp; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__ current_frame_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC7 (void)
{
  rtx tmp;

  if (current_frame_info.reg_save_gp)
    tmp = FUNC6 (DImode, current_frame_info.reg_save_gp);
  else
    {
      HOST_WIDE_INT offset;

      offset = (current_frame_info.spill_cfa_off
	        + current_frame_info.spill_size);
      if (frame_pointer_needed)
        {
          tmp = hard_frame_pointer_rtx;
          offset = -offset;
        }
      else
        {
          tmp = stack_pointer_rtx;
          offset = current_frame_info.total_size - offset;
        }

      if (FUNC0 (offset))
        FUNC2 (FUNC4 (pic_offset_table_rtx,
			       tmp, FUNC1 (offset)));
      else
        {
          FUNC3 (pic_offset_table_rtx, FUNC1 (offset));
          FUNC2 (FUNC4 (pic_offset_table_rtx,
			         pic_offset_table_rtx, tmp));
        }

      tmp = FUNC5 (DImode, pic_offset_table_rtx);
    }

  FUNC3 (pic_offset_table_rtx, tmp);
}