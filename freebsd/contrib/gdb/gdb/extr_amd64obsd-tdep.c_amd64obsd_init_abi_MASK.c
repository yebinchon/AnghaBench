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
struct gdbarch_tdep {int sizeof_gregset; int jb_pc_offset; void* sc_num_regs; void* sc_reg_offset; int /*<<< orphan*/  sigcontext_addr; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  amd64obsd_pc_in_sigtramp ; 
 void* amd64obsd_r_reg_offset ; 
 int /*<<< orphan*/  amd64obsd_regset_from_core_section ; 
 void* amd64obsd_sc_reg_offset ; 
 int /*<<< orphan*/  amd64obsd_sigcontext_addr ; 
 struct gdbarch_tdep* FUNC2 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svr4_lp64_fetch_link_map_offsets ; 

__attribute__((used)) static void
FUNC6 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC2 (gdbarch);

  FUNC1 (info, gdbarch);

  /* Initialize general-purpose register set details.  */
  tdep->gregset_reg_offset = amd64obsd_r_reg_offset;
  tdep->gregset_num_regs = FUNC0 (amd64obsd_r_reg_offset);
  tdep->sizeof_gregset = 24 * 8;

  FUNC4 (gdbarch,
					amd64obsd_regset_from_core_section);

  tdep->jb_pc_offset = 7 * 8;

  FUNC3 (gdbarch, amd64obsd_pc_in_sigtramp);
  tdep->sigcontext_addr = amd64obsd_sigcontext_addr;
  tdep->sc_reg_offset = amd64obsd_sc_reg_offset;
  tdep->sc_num_regs = FUNC0 (amd64obsd_sc_reg_offset);

  /* OpenBSD uses SVR4-style shared libraries.  */
  FUNC5
    (gdbarch, svr4_lp64_fetch_link_map_offsets);
}