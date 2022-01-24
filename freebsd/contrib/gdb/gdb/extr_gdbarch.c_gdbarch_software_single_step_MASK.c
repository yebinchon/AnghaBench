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
struct gdbarch {int /*<<< orphan*/  (* software_single_step ) (int,int) ;} ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void
FUNC3 (struct gdbarch *gdbarch, enum target_signal sig, int insert_breakpoints_p)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->software_single_step != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_software_single_step called\n");
  gdbarch->software_single_step (sig, insert_breakpoints_p);
}