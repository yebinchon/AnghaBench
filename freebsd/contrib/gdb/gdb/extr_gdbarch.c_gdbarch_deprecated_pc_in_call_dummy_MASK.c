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
struct gdbarch {int (* deprecated_pc_in_call_dummy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3 (struct gdbarch *gdbarch, CORE_ADDR pc, CORE_ADDR sp, CORE_ADDR frame_address)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_pc_in_call_dummy != NULL);
  /* Do not check predicate: gdbarch->deprecated_pc_in_call_dummy != generic_pc_in_call_dummy, allow call.  */
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_pc_in_call_dummy called\n");
  return gdbarch->deprecated_pc_in_call_dummy (pc, sp, frame_address);
}