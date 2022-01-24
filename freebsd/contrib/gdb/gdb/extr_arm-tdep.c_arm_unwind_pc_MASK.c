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
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_PC_REGNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC3 (struct gdbarch *gdbarch, struct frame_info *this_frame)
{
  CORE_ADDR pc;
  pc = FUNC2 (this_frame, ARM_PC_REGNUM);
  return FUNC0 (pc) ? FUNC1 (pc) : pc;
}