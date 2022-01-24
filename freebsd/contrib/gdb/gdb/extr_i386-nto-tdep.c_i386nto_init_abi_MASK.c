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
 int /*<<< orphan*/  TARGET_SO_FIND_AND_OPEN_SOLIB ; 
 int /*<<< orphan*/  TARGET_SO_RELOCATE_SECTION_ADDRESSES ; 
 int /*<<< orphan*/  find_solib_trampoline_target ; 
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  i386nto_pc_in_sigtramp ; 
 int /*<<< orphan*/  i386nto_sigcontext_addr ; 
 int /*<<< orphan*/  i386nto_svr4_fetch_link_map_offsets ; 
 int /*<<< orphan*/  in_plt_section ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  nto_find_and_open_solib ; 
 int /*<<< orphan*/  nto_relocate_section_addresses ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  /* NTO uses ELF.  */
  FUNC1 (info, gdbarch);

  /* Neutrino rewinds to look more normal.  Need to override the i386
     default which is [unfortunately] to decrement the PC.  */
  FUNC3 (gdbarch, 0);

  /* NTO has shared libraries.  */
  FUNC4 (gdbarch, in_plt_section);
  FUNC6 (gdbarch, find_solib_trampoline_target);

  FUNC5 (gdbarch, i386nto_pc_in_sigtramp);
  tdep->sigcontext_addr = i386nto_sigcontext_addr;
  tdep->sc_pc_offset = 56;
  tdep->sc_sp_offset = 68;

  /* Setjmp()'s return PC saved in EDX (5).  */
  tdep->jb_pc_offset = 20;	/* 5x32 bit ints in.  */

  FUNC7 (gdbarch,
					 i386nto_svr4_fetch_link_map_offsets);

  /* Our loader handles solib relocations slightly differently than svr4.  */
  TARGET_SO_RELOCATE_SECTION_ADDRESSES = nto_relocate_section_addresses;

  /* Supply a nice function to find our solibs.  */
  TARGET_SO_FIND_AND_OPEN_SOLIB = nto_find_and_open_solib;

  FUNC2 ();
}