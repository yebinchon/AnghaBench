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
struct gdbarch {int /*<<< orphan*/  (* deprecated_register_convert_to_raw ) (struct type*,int,char const*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int,char const*,char*) ; 

void
FUNC3 (struct gdbarch *gdbarch, struct type *type, int regnum, const char *from, char *to)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_register_convert_to_raw != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_register_convert_to_raw called\n");
  gdbarch->deprecated_register_convert_to_raw (type, regnum, from, to);
}