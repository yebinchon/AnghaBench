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
struct gdbarch_tdep {int sc_pc_offset; int sc_sp_offset; int jb_pc_offset; int /*<<< orphan*/  sigcontext_addr; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_solib_trampoline_target ; 
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  i386_svr4_pc_in_sigtramp ; 
 int /*<<< orphan*/  i386_svr4_sigcontext_addr ; 
 int /*<<< orphan*/  in_plt_section ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  /* System V Release 4 uses ELF.  */
  FUNC1 (info, gdbarch);

  /* System V Release 4 has shared libraries.  */
  FUNC2 (gdbarch, in_plt_section);
  FUNC4 (gdbarch, find_solib_trampoline_target);

  FUNC3 (gdbarch, i386_svr4_pc_in_sigtramp);
  tdep->sigcontext_addr = i386_svr4_sigcontext_addr;
  tdep->sc_pc_offset = 36 + 14 * 4;
  tdep->sc_sp_offset = 36 + 17 * 4;

  tdep->jb_pc_offset = 20;
}