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
struct gdbarch_tdep {int sc_pc_offset; int sc_regs_offset; int sc_fpregs_offset; int jb_pc; int /*<<< orphan*/ * sigcontext_addr; int /*<<< orphan*/ * dynamic_sigtramp_offset; scalar_t__ vm_min_address; } ;
struct gdbarch_list {struct gdbarch* gdbarch; } ;
struct gdbarch_info {scalar_t__ osabi; int /*<<< orphan*/ * abfd; } ;
struct gdbarch {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_FP0_REGNUM ; 
 int /*<<< orphan*/  ALPHA_NUM_REGS ; 
 int /*<<< orphan*/  ALPHA_PC_REGNUM ; 
 int /*<<< orphan*/  ALPHA_SP_REGNUM ; 
 scalar_t__ GDB_OSABI_OSF1 ; 
 scalar_t__ GDB_OSABI_UNKNOWN ; 
 int /*<<< orphan*/  alpha_breakpoint_from_pc ; 
 int /*<<< orphan*/  alpha_cannot_fetch_register ; 
 int /*<<< orphan*/  alpha_cannot_store_register ; 
 int /*<<< orphan*/  alpha_convert_register_p ; 
 int /*<<< orphan*/  alpha_extract_return_value ; 
 int /*<<< orphan*/  alpha_extract_struct_value_address ; 
 int /*<<< orphan*/  alpha_get_longjmp_target ; 
 int /*<<< orphan*/  alpha_heuristic_frame_base ; 
 int /*<<< orphan*/  alpha_heuristic_frame_sniffer ; 
 int /*<<< orphan*/  alpha_push_dummy_call ; 
 int /*<<< orphan*/  alpha_register_byte ; 
 int /*<<< orphan*/  alpha_register_name ; 
 int /*<<< orphan*/  alpha_register_raw_size ; 
 int /*<<< orphan*/  alpha_register_reggroup_p ; 
 int /*<<< orphan*/  alpha_register_to_value ; 
 int /*<<< orphan*/  alpha_register_type ; 
 int /*<<< orphan*/  alpha_register_virtual_size ; 
 int /*<<< orphan*/  alpha_sigtramp_frame_sniffer ; 
 int /*<<< orphan*/  alpha_skip_prologue ; 
 int /*<<< orphan*/  alpha_store_return_value ; 
 int /*<<< orphan*/  alpha_unwind_dummy_id ; 
 int /*<<< orphan*/  alpha_unwind_pc ; 
 int /*<<< orphan*/  alpha_value_to_register ; 
 int /*<<< orphan*/  always_use_struct_convention ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 int /*<<< orphan*/  core_addr_lessthan ; 
 int /*<<< orphan*/  find_solib_trampoline_target ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch* FUNC3 (struct gdbarch_info*,struct gdbarch_tdep*) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch_info,struct gdbarch*) ; 
 struct gdbarch_list* FUNC5 (struct gdbarch_list*,struct gdbarch_info*) ; 
 int /*<<< orphan*/  print_insn_alpha ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC43 (int) ; 

__attribute__((used)) static struct gdbarch *
FUNC44 (struct gdbarch_info info, struct gdbarch_list *arches)
{
  struct gdbarch_tdep *tdep;
  struct gdbarch *gdbarch;

  /* Try to determine the ABI of the object we are loading.  */
  if (info.abfd != NULL && info.osabi == GDB_OSABI_UNKNOWN)
    {
      /* If it's an ECOFF file, assume it's OSF/1.  */
      if (FUNC0 (info.abfd) == bfd_target_ecoff_flavour)
	info.osabi = GDB_OSABI_OSF1;
    }

  /* Find a candidate among extant architectures.  */
  arches = FUNC5 (arches, &info);
  if (arches != NULL)
    return arches->gdbarch;

  tdep = FUNC43 (sizeof (struct gdbarch_tdep));
  gdbarch = FUNC3 (&info, tdep);

  /* Lowest text address.  This is used by heuristic_proc_start()
     to decide when to stop looking.  */
  tdep->vm_min_address = (CORE_ADDR) 0x120000000;

  tdep->dynamic_sigtramp_offset = NULL;
  tdep->sigcontext_addr = NULL;
  tdep->sc_pc_offset = 2 * 8;
  tdep->sc_regs_offset = 4 * 8;
  tdep->sc_fpregs_offset = tdep->sc_regs_offset + 32 * 8 + 8;

  tdep->jb_pc = -1;	/* longjmp support not enabled by default  */

  /* Type sizes */
  FUNC34 (gdbarch, 16);
  FUNC21 (gdbarch, 32);
  FUNC22 (gdbarch, 64);
  FUNC24 (gdbarch, 64);
  FUNC17 (gdbarch, 32);
  FUNC15 (gdbarch, 64);
  FUNC23 (gdbarch, 64);
  FUNC28 (gdbarch, 64);

  /* Register info */
  FUNC25 (gdbarch, ALPHA_NUM_REGS);
  FUNC37 (gdbarch, ALPHA_SP_REGNUM);
  FUNC26 (gdbarch, ALPHA_PC_REGNUM);
  FUNC18 (gdbarch, ALPHA_FP0_REGNUM);

  FUNC30 (gdbarch, alpha_register_name);
  FUNC12 (gdbarch, alpha_register_byte);
  FUNC13 (gdbarch, alpha_register_raw_size);
  FUNC14 (gdbarch, alpha_register_virtual_size);
  FUNC33 (gdbarch, alpha_register_type);

  FUNC7 (gdbarch, alpha_cannot_fetch_register);
  FUNC8 (gdbarch, alpha_cannot_store_register);

  FUNC9 (gdbarch, alpha_convert_register_p);
  FUNC32 (gdbarch, alpha_register_to_value);
  FUNC42 (gdbarch, alpha_value_to_register);

  FUNC31 (gdbarch, alpha_register_reggroup_p);

  /* Prologue heuristics.  */
  FUNC35 (gdbarch, alpha_skip_prologue);

  /* Disassembler.  */
  FUNC27 (gdbarch, print_insn_alpha);

  /* Call info.  */

  FUNC41 (gdbarch, always_use_struct_convention);
  FUNC16 (gdbarch, alpha_extract_return_value);
  FUNC38 (gdbarch, alpha_store_return_value);
  FUNC11 (gdbarch, alpha_extract_struct_value_address);

  /* Settings for calling functions in the inferior.  */
  FUNC29 (gdbarch, alpha_push_dummy_call);

  /* Methods for saving / extracting a dummy frame's ID.  */
  FUNC39 (gdbarch, alpha_unwind_dummy_id);

  /* Return the unwound PC value.  */
  FUNC40 (gdbarch, alpha_unwind_pc);

  FUNC20 (gdbarch, core_addr_lessthan);
  FUNC36 (gdbarch, find_solib_trampoline_target);

  FUNC6 (gdbarch, alpha_breakpoint_from_pc);
  FUNC10 (gdbarch, 4);

  /* Hook in ABI-specific overrides, if they have been registered.  */
  FUNC4 (info, gdbarch);

  /* Now that we have tuned the configuration, set a few final things
     based on what the OS ABI has told us.  */

  if (tdep->jb_pc >= 0)
    FUNC19 (gdbarch, alpha_get_longjmp_target);

  FUNC2 (gdbarch, alpha_sigtramp_frame_sniffer);
  FUNC2 (gdbarch, alpha_heuristic_frame_sniffer);

  FUNC1 (gdbarch, &alpha_heuristic_frame_base);

  return gdbarch;
}