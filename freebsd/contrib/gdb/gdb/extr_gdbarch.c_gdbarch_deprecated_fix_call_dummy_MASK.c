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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct gdbarch {int /*<<< orphan*/  (* deprecated_fix_call_dummy ) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,struct type*,int) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,struct type*,int) ; 

void
FUNC3 (struct gdbarch *gdbarch, char *dummy, CORE_ADDR pc, CORE_ADDR fun, int nargs, struct value **args, struct type *type, int gcc_p)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_fix_call_dummy != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_fix_call_dummy called\n");
  gdbarch->deprecated_fix_call_dummy (dummy, pc, fun, nargs, args, type, gcc_p);
}