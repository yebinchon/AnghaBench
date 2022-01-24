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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 struct frame_unwind const dummy_frame_unwind ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

const struct frame_unwind *
FUNC4 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC2 (next_frame);
  if (FUNC1 ()
      ? FUNC0 (pc, 0, 0)
      : FUNC3 (pc))
    return &dummy_frame_unwind;
  else
    return NULL;
}