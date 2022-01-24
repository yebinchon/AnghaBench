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

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ TARGET_ABICALLS ; 
 int /*<<< orphan*/  TARGET_EXPLICIT_RELOCS ; 
 scalar_t__ TARGET_OLDABI ; 
 int /*<<< orphan*/  current_function_outgoing_args_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC6 (void)
{
  rtx address, slot;

  FUNC2 (TARGET_ABICALLS && TARGET_OLDABI);

  address = FUNC5 (pic_offset_table_rtx,
			     frame_pointer_needed
			     ? hard_frame_pointer_rtx
			     : stack_pointer_rtx,
			     current_function_outgoing_args_size);
  slot = FUNC4 (Pmode, address);

  FUNC1 (pic_offset_table_rtx, slot);
  if (!TARGET_EXPLICIT_RELOCS)
    FUNC0 (FUNC3 ());
}