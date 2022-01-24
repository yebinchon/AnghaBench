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
struct ui_file {int dummy; } ;
struct gdbarch {int /*<<< orphan*/  (* print_registers_info ) (struct gdbarch*,struct ui_file*,struct frame_info*,int,int) ;} ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,struct ui_file*,struct frame_info*,int,int) ; 

void
FUNC3 (struct gdbarch *gdbarch, struct ui_file *file, struct frame_info *frame, int regnum, int all)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->print_registers_info != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_print_registers_info called\n");
  gdbarch->print_registers_info (gdbarch, file, frame, regnum, all);
}