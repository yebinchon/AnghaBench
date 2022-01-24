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
struct gdbarch_tdep {int sigtramp_start; int sigtramp_end; int /*<<< orphan*/  sc_num_regs; int /*<<< orphan*/  sc_reg_offset; int /*<<< orphan*/  sigcontext_addr; scalar_t__ jb_pc_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  i386bsd_aout_in_solib_call_trampoline ; 
 int /*<<< orphan*/  i386bsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  i386bsd_sc_reg_offset ; 
 int /*<<< orphan*/  i386bsd_sigcontext_addr ; 
 int /*<<< orphan*/  i386bsd_sigtramp_end ; 
 int /*<<< orphan*/  i386bsd_sigtramp_start ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 

void
FUNC6 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  FUNC3 (gdbarch, i386bsd_pc_in_sigtramp);

  /* Allow the recognition of sigtramps as a function named <sigtramp>.  */
  FUNC5 (gdbarch, i386bsd_sigtramp_start);
  FUNC4 (gdbarch, i386bsd_sigtramp_end);

  /* Assume SunOS-style shared libraries.  */
  FUNC2 (gdbarch,
					i386bsd_aout_in_solib_call_trampoline);

  tdep->jb_pc_offset = 0;

  tdep->sigtramp_start = 0xfdbfdfc0;
  tdep->sigtramp_end = 0xfdbfe000;
  tdep->sigcontext_addr = i386bsd_sigcontext_addr;
  tdep->sc_reg_offset = i386bsd_sc_reg_offset;
  tdep->sc_num_regs = FUNC0 (i386bsd_sc_reg_offset);
}