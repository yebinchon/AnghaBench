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
struct gdbarch_tdep {int sizeof_gregset; void* sc_num_regs; void* sc_reg_offset; int /*<<< orphan*/  struct_return; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  i386nbsd_pc_in_sigtramp ; 
 void* i386nbsd_r_reg_offset ; 
 void* i386nbsd_sc_reg_offset ; 
 int /*<<< orphan*/  reg_struct_return ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC6 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  /* Obviously NetBSD is BSD-based.  */
  FUNC2 (info, gdbarch);

  /* NetBSD has a different `struct reg'.  */
  tdep->gregset_reg_offset = i386nbsd_r_reg_offset;
  tdep->gregset_num_regs = FUNC0 (i386nbsd_r_reg_offset);
  tdep->sizeof_gregset = 16 * 4;

  /* NetBSD has different signal trampoline conventions.  */
  FUNC3 (gdbarch, i386nbsd_pc_in_sigtramp);
  /* FIXME: kettenis/20020906: We should probably provide
     NetBSD-specific versions of these functions if we want to
     recognize signal trampolines that live on the stack.  */
  FUNC5 (gdbarch, NULL);
  FUNC4 (gdbarch, NULL);

  /* NetBSD uses -freg-struct-return by default.  */
  tdep->struct_return = reg_struct_return;

  /* NetBSD has a `struct sigcontext' that's different from the
     origional 4.3 BSD.  */
  tdep->sc_reg_offset = i386nbsd_sc_reg_offset;
  tdep->sc_num_regs = FUNC0 (i386nbsd_sc_reg_offset);
}