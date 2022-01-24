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
struct type {int dummy; } ;
struct gdbarch {int (* deprecated_reg_struct_has_addr ) (int,struct type*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int FUNC2 (int,struct type*) ; 

int
FUNC3 (struct gdbarch *gdbarch, int gcc_p, struct type *type)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_reg_struct_has_addr != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_reg_struct_has_addr called\n");
  return gdbarch->deprecated_reg_struct_has_addr (gcc_p, type);
}