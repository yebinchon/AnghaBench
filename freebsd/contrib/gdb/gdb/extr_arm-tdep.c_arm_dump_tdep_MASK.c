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
struct gdbarch_tdep {scalar_t__ lowest_pc; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,unsigned long) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 

__attribute__((used)) static void
FUNC2 (struct gdbarch *current_gdbarch, struct ui_file *file)
{
  struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);

  if (tdep == NULL)
    return;

  FUNC0 (file, "arm_dump_tdep: Lowest pc = 0x%lx",
		      (unsigned long) tdep->lowest_pc);
}