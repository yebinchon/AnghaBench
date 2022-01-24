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
struct gdbarch {int /*<<< orphan*/  (* push_dummy_code ) (struct gdbarch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,int,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,int,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

CORE_ADDR
FUNC3 (struct gdbarch *gdbarch, CORE_ADDR sp, CORE_ADDR funaddr, int using_gcc, struct value **args, int nargs, struct type *value_type, CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->push_dummy_code != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_push_dummy_code called\n");
  return gdbarch->push_dummy_code (gdbarch, sp, funaddr, using_gcc, args, nargs, value_type, real_pc, bp_addr);
}