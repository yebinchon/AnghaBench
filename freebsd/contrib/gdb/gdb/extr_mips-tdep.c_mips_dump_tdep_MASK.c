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
struct gdbarch_tdep {int elf_flags; size_t mips_abi; int /*<<< orphan*/  default_mask_address_p; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int A0_REGNUM ; 
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARGS ; 
 int /*<<< orphan*/  ATTACH_DETACH ; 
 int /*<<< orphan*/  BP_P ; 
 int /*<<< orphan*/  CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EF_MIPS_32BITMODE ; 
 int EF_MIPS_ARCH ; 
#define  E_MIPS_ARCH_1 131 
#define  E_MIPS_ARCH_2 130 
#define  E_MIPS_ARCH_3 129 
#define  E_MIPS_ARCH_4 128 
 long FIRST_EMBED_REGNUM ; 
 long FP_REGISTER_DOUBLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long LAST_EMBED_REGNUM ; 
 long MACHINE_CPROC_FP_OFFSET ; 
 long MACHINE_CPROC_PC_OFFSET ; 
 long MACHINE_CPROC_SP_OFFSET ; 
 long MIPS16_INSTLEN ; 
 int /*<<< orphan*/  MIPS_DEFAULT_FPU_TYPE ; 
 long MIPS_EABI ; 
 int /*<<< orphan*/  MIPS_FPU_DOUBLE ; 
 int /*<<< orphan*/  MIPS_FPU_NONE ; 
 int /*<<< orphan*/  MIPS_FPU_SINGLE ; 
 int /*<<< orphan*/  MIPS_FPU_TYPE ; 
 long MIPS_INSTLEN ; 
 int MIPS_LAST_ARG_REGNUM ; 
 long MIPS_NUMREGS ; 
 int /*<<< orphan*/  NAME ; 
 int /*<<< orphan*/  NUMARGS ; 
 int /*<<< orphan*/  OTHERTYPE ; 
 int /*<<< orphan*/  PC ; 
 long PRID_REGNUM ; 
 long PS_REGNUM ; 
 long RA_REGNUM ; 
 int /*<<< orphan*/  REGNUM ; 
 long SAVED_BYTES ; 
 long SAVED_FP ; 
 long SAVED_PC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 long STACK_END_ADDR ; 
 int /*<<< orphan*/  STATE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 long STEP_SKIPS_DELAY_P ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 long T9_REGNUM ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_HAS_HARDWARE_WATCHPOINTS ; 
 int /*<<< orphan*/  THREAD ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long TRACE_FLAVOR ; 
 long TRACE_FLAVOR_SIZE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE ; 
 long UNUSED_REGNUM ; 
 long V0_REGNUM ; 
 scalar_t__ VM_MIN_ADDRESS ; 
 int /*<<< orphan*/  WS ; 
 int /*<<< orphan*/  X ; 
 long FUNC16 (int /*<<< orphan*/ ) ; 
 long ZERO_REGNUM ; 
 long _PROC_MAGIC_ ; 
 int /*<<< orphan*/  FUNC17 (struct ui_file*,char*,...) ; 
 struct gdbarch_tdep* FUNC18 (struct gdbarch*) ; 
 int /*<<< orphan*/ * mips_abi_strings ; 
 int /*<<< orphan*/  FUNC19 (struct gdbarch_tdep*) ; 
 long FUNC20 (struct gdbarch_tdep*) ; 
 long FUNC21 (struct gdbarch_tdep*) ; 

__attribute__((used)) static void
FUNC22 (struct gdbarch *current_gdbarch, struct ui_file *file)
{
  struct gdbarch_tdep *tdep = FUNC18 (current_gdbarch);
  if (tdep != NULL)
    {
      int ef_mips_arch;
      int ef_mips_32bitmode;
      /* determine the ISA */
      switch (tdep->elf_flags & EF_MIPS_ARCH)
	{
	case E_MIPS_ARCH_1:
	  ef_mips_arch = 1;
	  break;
	case E_MIPS_ARCH_2:
	  ef_mips_arch = 2;
	  break;
	case E_MIPS_ARCH_3:
	  ef_mips_arch = 3;
	  break;
	case E_MIPS_ARCH_4:
	  ef_mips_arch = 4;
	  break;
	default:
	  ef_mips_arch = 0;
	  break;
	}
      /* determine the size of a pointer */
      ef_mips_32bitmode = (tdep->elf_flags & EF_MIPS_32BITMODE);
      FUNC17 (file,
			  "mips_dump_tdep: tdep->elf_flags = 0x%x\n",
			  tdep->elf_flags);
      FUNC17 (file,
			  "mips_dump_tdep: ef_mips_32bitmode = %d\n",
			  ef_mips_32bitmode);
      FUNC17 (file,
			  "mips_dump_tdep: ef_mips_arch = %d\n",
			  ef_mips_arch);
      FUNC17 (file,
			  "mips_dump_tdep: tdep->mips_abi = %d (%s)\n",
			  tdep->mips_abi, mips_abi_strings[tdep->mips_abi]);
      FUNC17 (file,
			  "mips_dump_tdep: mips_mask_address_p() %d (default %d)\n",
			  FUNC19 (tdep),
			  tdep->default_mask_address_p);
    }
  FUNC17 (file,
		      "mips_dump_tdep: FP_REGISTER_DOUBLE = %d\n",
		      FP_REGISTER_DOUBLE);
  FUNC17 (file,
		      "mips_dump_tdep: MIPS_DEFAULT_FPU_TYPE = %d (%s)\n",
		      MIPS_DEFAULT_FPU_TYPE,
		      (MIPS_DEFAULT_FPU_TYPE == MIPS_FPU_NONE ? "none"
		       : MIPS_DEFAULT_FPU_TYPE == MIPS_FPU_SINGLE ? "single"
		       : MIPS_DEFAULT_FPU_TYPE == MIPS_FPU_DOUBLE ? "double"
		       : "???"));
  FUNC17 (file, "mips_dump_tdep: MIPS_EABI = %d\n", MIPS_EABI);
  FUNC17 (file,
		      "mips_dump_tdep: MIPS_FPU_TYPE = %d (%s)\n",
		      MIPS_FPU_TYPE,
		      (MIPS_FPU_TYPE == MIPS_FPU_NONE ? "none"
		       : MIPS_FPU_TYPE == MIPS_FPU_SINGLE ? "single"
		       : MIPS_FPU_TYPE == MIPS_FPU_DOUBLE ? "double"
		       : "???"));
  FUNC17 (file,
		      "mips_dump_tdep: FP_REGISTER_DOUBLE = %d\n",
		      FP_REGISTER_DOUBLE);
  FUNC17 (file,
		      "mips_dump_tdep: mips_stack_argsize() = %d\n",
		      FUNC21 (tdep));
  FUNC17 (file, "mips_dump_tdep: A0_REGNUM = %d\n", A0_REGNUM);
  FUNC17 (file,
		      "mips_dump_tdep: ADDR_BITS_REMOVE # %s\n",
		      FUNC16 (FUNC0 (ADDR)));
  FUNC17 (file,
		      "mips_dump_tdep: ATTACH_DETACH # %s\n",
		      FUNC16 (ATTACH_DETACH));
  FUNC17 (file,
		      "mips_dump_tdep: DWARF_REG_TO_REGNUM # %s\n",
		      FUNC16 (FUNC1 (REGNUM)));
  FUNC17 (file,
		      "mips_dump_tdep: ECOFF_REG_TO_REGNUM # %s\n",
		      FUNC16 (FUNC2 (REGNUM)));
  FUNC17 (file,
		      "mips_dump_tdep: FIRST_EMBED_REGNUM = %d\n",
		      FIRST_EMBED_REGNUM);
  FUNC17 (file,
		      "mips_dump_tdep: IGNORE_HELPER_CALL # %s\n",
		      FUNC16 (FUNC3 (PC)));
  FUNC17 (file,
		      "mips_dump_tdep: IN_SOLIB_CALL_TRAMPOLINE # %s\n",
		      FUNC16 (FUNC4 (PC, NAME)));
  FUNC17 (file,
		      "mips_dump_tdep: IN_SOLIB_RETURN_TRAMPOLINE # %s\n",
		      FUNC16 (FUNC5 (PC, NAME)));
  FUNC17 (file,
		      "mips_dump_tdep: LAST_EMBED_REGNUM = %d\n",
		      LAST_EMBED_REGNUM);
#ifdef MACHINE_CPROC_FP_OFFSET
  fprintf_unfiltered (file,
		      "mips_dump_tdep: MACHINE_CPROC_FP_OFFSET = %d\n",
		      MACHINE_CPROC_FP_OFFSET);
#endif
#ifdef MACHINE_CPROC_PC_OFFSET
  fprintf_unfiltered (file,
		      "mips_dump_tdep: MACHINE_CPROC_PC_OFFSET = %d\n",
		      MACHINE_CPROC_PC_OFFSET);
#endif
#ifdef MACHINE_CPROC_SP_OFFSET
  fprintf_unfiltered (file,
		      "mips_dump_tdep: MACHINE_CPROC_SP_OFFSET = %d\n",
		      MACHINE_CPROC_SP_OFFSET);
#endif
  FUNC17 (file,
		      "mips_dump_tdep: MIPS16_INSTLEN = %d\n",
		      MIPS16_INSTLEN);
  FUNC17 (file, "mips_dump_tdep: MIPS_DEFAULT_ABI = FIXME!\n");
  FUNC17 (file,
		      "mips_dump_tdep: MIPS_EFI_SYMBOL_NAME = multi-arch!!\n");
  FUNC17 (file,
		      "mips_dump_tdep: MIPS_INSTLEN = %d\n", MIPS_INSTLEN);
  FUNC17 (file,
		      "mips_dump_tdep: MIPS_LAST_ARG_REGNUM = %d (%d regs)\n",
		      MIPS_LAST_ARG_REGNUM,
		      MIPS_LAST_ARG_REGNUM - A0_REGNUM + 1);
  FUNC17 (file,
		      "mips_dump_tdep: MIPS_NUMREGS = %d\n", MIPS_NUMREGS);
  FUNC17 (file,
		      "mips_dump_tdep: mips_saved_regsize() = %d\n",
		      FUNC20 (tdep));
  FUNC17 (file,
		      "mips_dump_tdep: PRID_REGNUM = %d\n", PRID_REGNUM);
  FUNC17 (file,
		      "mips_dump_tdep: PROC_DESC_IS_DUMMY = function?\n");
  FUNC17 (file,
		      "mips_dump_tdep: PROC_FRAME_ADJUST = function?\n");
  FUNC17 (file,
		      "mips_dump_tdep: PROC_FRAME_OFFSET = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_FRAME_REG = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_FREG_MASK = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_FREG_OFFSET = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_HIGH_ADDR = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_LOW_ADDR = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_PC_REG = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_REG_MASK = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_REG_OFFSET = function?\n");
  FUNC17 (file, "mips_dump_tdep: PROC_SYMBOL = function?\n");
  FUNC17 (file, "mips_dump_tdep: PS_REGNUM = %d\n", PS_REGNUM);
  FUNC17 (file, "mips_dump_tdep: RA_REGNUM = %d\n", RA_REGNUM);
#ifdef SAVED_BYTES
  fprintf_unfiltered (file,
		      "mips_dump_tdep: SAVED_BYTES = %d\n", SAVED_BYTES);
#endif
#ifdef SAVED_FP
  fprintf_unfiltered (file, "mips_dump_tdep: SAVED_FP = %d\n", SAVED_FP);
#endif
#ifdef SAVED_PC
  fprintf_unfiltered (file, "mips_dump_tdep: SAVED_PC = %d\n", SAVED_PC);
#endif
  FUNC17 (file,
		      "mips_dump_tdep: SETUP_ARBITRARY_FRAME # %s\n",
		      FUNC16 (FUNC6 (NUMARGS, ARGS)));
  FUNC17 (file,
		      "mips_dump_tdep: SET_PROC_DESC_IS_DUMMY = function?\n");
  FUNC17 (file,
		      "mips_dump_tdep: SKIP_TRAMPOLINE_CODE # %s\n",
		      FUNC16 (FUNC7 (PC)));
  FUNC17 (file,
		      "mips_dump_tdep: SOFTWARE_SINGLE_STEP # %s\n",
		      FUNC16 (FUNC8 (SIG, BP_P)));
  FUNC17 (file,
		      "mips_dump_tdep: SOFTWARE_SINGLE_STEP_P () = %d\n",
		      FUNC9 ());
  FUNC17 (file,
		      "mips_dump_tdep: STAB_REG_TO_REGNUM # %s\n",
		      FUNC16 (FUNC10 (REGNUM)));
#ifdef STACK_END_ADDR
  fprintf_unfiltered (file,
		      "mips_dump_tdep: STACK_END_ADDR = %d\n",
		      STACK_END_ADDR);
#endif
  FUNC17 (file,
		      "mips_dump_tdep: STEP_SKIPS_DELAY # %s\n",
		      FUNC16 (FUNC11 (PC)));
  FUNC17 (file,
		      "mips_dump_tdep: STEP_SKIPS_DELAY_P = %d\n",
		      STEP_SKIPS_DELAY_P);
  FUNC17 (file,
		      "mips_dump_tdep: STOPPED_BY_WATCHPOINT # %s\n",
		      FUNC16 (FUNC12 (WS)));
  FUNC17 (file, "mips_dump_tdep: T9_REGNUM = %d\n", T9_REGNUM);
  FUNC17 (file,
		      "mips_dump_tdep: TABULAR_REGISTER_OUTPUT = used?\n");
  FUNC17 (file,
		      "mips_dump_tdep: TARGET_CAN_USE_HARDWARE_WATCHPOINT # %s\n",
		      FUNC16 (FUNC13
			       (TYPE, CNT, OTHERTYPE)));
  FUNC17 (file,
		      "mips_dump_tdep: TARGET_HAS_HARDWARE_WATCHPOINTS # %s\n",
		      FUNC16 (TARGET_HAS_HARDWARE_WATCHPOINTS));
#ifdef TRACE_CLEAR
  fprintf_unfiltered (file,
		      "mips_dump_tdep: TRACE_CLEAR # %s\n",
		      XSTRING (TRACE_CLEAR (THREAD, STATE)));
#endif
#ifdef TRACE_FLAVOR
  fprintf_unfiltered (file,
		      "mips_dump_tdep: TRACE_FLAVOR = %d\n", TRACE_FLAVOR);
#endif
#ifdef TRACE_FLAVOR_SIZE
  fprintf_unfiltered (file,
		      "mips_dump_tdep: TRACE_FLAVOR_SIZE = %d\n",
		      TRACE_FLAVOR_SIZE);
#endif
#ifdef TRACE_SET
  fprintf_unfiltered (file,
		      "mips_dump_tdep: TRACE_SET # %s\n",
		      XSTRING (TRACE_SET (X, STATE)));
#endif
#ifdef UNUSED_REGNUM
  fprintf_unfiltered (file,
		      "mips_dump_tdep: UNUSED_REGNUM = %d\n", UNUSED_REGNUM);
#endif
  FUNC17 (file, "mips_dump_tdep: V0_REGNUM = %d\n", V0_REGNUM);
  FUNC17 (file,
		      "mips_dump_tdep: VM_MIN_ADDRESS = %ld\n",
		      (long) VM_MIN_ADDRESS);
  FUNC17 (file,
		      "mips_dump_tdep: ZERO_REGNUM = %d\n", ZERO_REGNUM);
  FUNC17 (file,
		      "mips_dump_tdep: _PROC_MAGIC_ = %d\n", _PROC_MAGIC_);
}