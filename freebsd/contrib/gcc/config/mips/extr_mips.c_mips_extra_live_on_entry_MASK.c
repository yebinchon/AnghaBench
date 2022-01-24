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
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  PIC_FUNCTION_ADDR_REGNUM ; 
 scalar_t__ TARGET_ABICALLS ; 
 int /*<<< orphan*/  TARGET_ABSOLUTE_ABICALLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (bitmap regs)
{
  if (TARGET_ABICALLS && !TARGET_ABSOLUTE_ABICALLS)
    FUNC0 (regs, PIC_FUNCTION_ADDR_REGNUM);
}