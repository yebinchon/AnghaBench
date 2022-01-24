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
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ pc; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*,scalar_t__) ; 
 TYPE_1__* FUNC1 (struct gdbarch*) ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  return FUNC0 (next_frame,
				       NUM_REGS + FUNC1 (gdbarch)->pc);
}