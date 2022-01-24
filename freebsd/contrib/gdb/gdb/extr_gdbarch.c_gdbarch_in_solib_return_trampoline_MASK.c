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
struct gdbarch {int (* in_solib_return_trampoline ) (int /*<<< orphan*/ ,char*) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3 (struct gdbarch *gdbarch, CORE_ADDR pc, char *name)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->in_solib_return_trampoline != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_in_solib_return_trampoline called\n");
  return gdbarch->in_solib_return_trampoline (pc, name);
}