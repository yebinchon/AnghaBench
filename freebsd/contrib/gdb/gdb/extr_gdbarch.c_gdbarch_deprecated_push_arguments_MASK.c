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
struct gdbarch {int /*<<< orphan*/  (* deprecated_push_arguments ) (int,struct value**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (int,struct value**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC3 (struct gdbarch *gdbarch, int nargs, struct value **args, CORE_ADDR sp, int struct_return, CORE_ADDR struct_addr)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_push_arguments != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_push_arguments called\n");
  return gdbarch->deprecated_push_arguments (nargs, args, sp, struct_return, struct_addr);
}