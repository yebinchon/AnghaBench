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
 int /*<<< orphan*/  ARM_SP_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC1 (struct gdbarch *gdbarch, struct frame_info *this_frame)
{
  return FUNC0 (this_frame, ARM_SP_REGNUM);
}