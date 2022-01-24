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
struct target_ops {int dummy; } ;
struct gdbarch {int /*<<< orphan*/  (* convert_from_func_ptr_addr ) (struct gdbarch*,int /*<<< orphan*/ ,struct target_ops*) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ,struct target_ops*) ; 

CORE_ADDR
FUNC3 (struct gdbarch *gdbarch, CORE_ADDR addr, struct target_ops *targ)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->convert_from_func_ptr_addr != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_convert_from_func_ptr_addr called\n");
  return gdbarch->convert_from_func_ptr_addr (gdbarch, addr, targ);
}