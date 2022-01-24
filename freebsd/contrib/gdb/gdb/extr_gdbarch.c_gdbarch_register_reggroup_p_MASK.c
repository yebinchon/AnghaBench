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
struct reggroup {int dummy; } ;
struct gdbarch {int (* register_reggroup_p ) (struct gdbarch*,int,struct reggroup*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int FUNC2 (struct gdbarch*,int,struct reggroup*) ; 

int
FUNC3 (struct gdbarch *gdbarch, int regnum, struct reggroup *reggroup)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->register_reggroup_p != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_register_reggroup_p called\n");
  return gdbarch->register_reggroup_p (gdbarch, regnum, reggroup);
}