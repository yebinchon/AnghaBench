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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ DECR_PC_AFTER_BREAK ; 
 scalar_t__ FUNC0 () ; 

int
FUNC1 (CORE_ADDR pc, CORE_ADDR sp,
					    CORE_ADDR frame_address)
{
  CORE_ADDR addr = FUNC0 ();
  return ((pc) >= addr && (pc) <= (addr + DECR_PC_AFTER_BREAK));
}