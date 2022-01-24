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
struct gdbarch_tdep {int /*<<< orphan*/  find_global_pointer; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  ia64_fbsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  ia64_fbsd_regset_from_core_section ; 
 int /*<<< orphan*/  ia64_generic_find_global_pointer ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svr4_lp64_fetch_link_map_offsets ; 

__attribute__((used)) static void
FUNC4 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  FUNC1 (gdbarch, ia64_fbsd_pc_in_sigtramp);
  FUNC2 (gdbarch,
                                        ia64_fbsd_regset_from_core_section);
  FUNC3 (gdbarch,
					 svr4_lp64_fetch_link_map_offsets);
  tdep->find_global_pointer = ia64_generic_find_global_pointer;
}