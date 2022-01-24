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
struct gdbarch_tdep {int sizeof_gregset; int sizeof_fpregset; int /*<<< orphan*/  gregset_num_regs; int /*<<< orphan*/  sc_num_regs; int /*<<< orphan*/  gregset_reg_offset; int /*<<< orphan*/  sc_reg_offset; int /*<<< orphan*/  sigcontext_addr; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  i386_sol2_gregset_reg_offset ; 
 int /*<<< orphan*/  i386_sol2_mcontext_addr ; 
 int /*<<< orphan*/  i386_sol2_pc_in_sigtramp ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  /* Solaris is SVR4-based.  */
  FUNC2 (info, gdbarch);

  /* Solaris reserves space for its FPU emulator in `fpregset_t'.
     There is also some space reserved for the registers of a Weitek
     math coprocessor.  */
  tdep->gregset_reg_offset = i386_sol2_gregset_reg_offset;
  tdep->gregset_num_regs = FUNC0 (i386_sol2_gregset_reg_offset);
  tdep->sizeof_gregset = 19 * 4;
  tdep->sizeof_fpregset = 380;

  tdep->sigcontext_addr = i386_sol2_mcontext_addr;
  tdep->sc_reg_offset = tdep->gregset_reg_offset;
  tdep->sc_num_regs = tdep->gregset_num_regs;

  /* Signal trampolines are slightly different from SVR4.  */
  FUNC3 (gdbarch, i386_sol2_pc_in_sigtramp);
}