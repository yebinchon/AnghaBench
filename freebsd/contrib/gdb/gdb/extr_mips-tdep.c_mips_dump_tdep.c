
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct gdbarch_tdep {int elf_flags; size_t mips_abi; int default_mask_address_p; } ;
struct gdbarch {int dummy; } ;


 int A0_REGNUM ;
 int ADDR ;
 int ADDR_BITS_REMOVE (int ) ;
 int ARGS ;
 int ATTACH_DETACH ;
 int BP_P ;
 int CNT ;
 int DWARF_REG_TO_REGNUM (int ) ;
 int ECOFF_REG_TO_REGNUM (int ) ;
 int EF_MIPS_32BITMODE ;
 int EF_MIPS_ARCH ;




 long FIRST_EMBED_REGNUM ;
 long FP_REGISTER_DOUBLE ;
 int IGNORE_HELPER_CALL (int ) ;
 int IN_SOLIB_CALL_TRAMPOLINE (int ,int ) ;
 int IN_SOLIB_RETURN_TRAMPOLINE (int ,int ) ;
 long LAST_EMBED_REGNUM ;
 long MACHINE_CPROC_FP_OFFSET ;
 long MACHINE_CPROC_PC_OFFSET ;
 long MACHINE_CPROC_SP_OFFSET ;
 long MIPS16_INSTLEN ;
 int MIPS_DEFAULT_FPU_TYPE ;
 long MIPS_EABI ;
 int MIPS_FPU_DOUBLE ;
 int MIPS_FPU_NONE ;
 int MIPS_FPU_SINGLE ;
 int MIPS_FPU_TYPE ;
 long MIPS_INSTLEN ;
 int MIPS_LAST_ARG_REGNUM ;
 long MIPS_NUMREGS ;
 int NAME ;
 int NUMARGS ;
 int OTHERTYPE ;
 int PC ;
 long PRID_REGNUM ;
 long PS_REGNUM ;
 long RA_REGNUM ;
 int REGNUM ;
 long SAVED_BYTES ;
 long SAVED_FP ;
 long SAVED_PC ;
 int SETUP_ARBITRARY_FRAME (int ,int ) ;
 int SIG ;
 int SKIP_TRAMPOLINE_CODE (int ) ;
 int SOFTWARE_SINGLE_STEP (int ,int ) ;
 long SOFTWARE_SINGLE_STEP_P () ;
 int STAB_REG_TO_REGNUM (int ) ;
 long STACK_END_ADDR ;
 int STATE ;
 int STEP_SKIPS_DELAY (int ) ;
 long STEP_SKIPS_DELAY_P ;
 int STOPPED_BY_WATCHPOINT (int ) ;
 long T9_REGNUM ;
 int TARGET_CAN_USE_HARDWARE_WATCHPOINT (int ,int ,int ) ;
 int TARGET_HAS_HARDWARE_WATCHPOINTS ;
 int THREAD ;
 int TRACE_CLEAR (int ,int ) ;
 long TRACE_FLAVOR ;
 long TRACE_FLAVOR_SIZE ;
 int TRACE_SET (int ,int ) ;
 int TYPE ;
 long UNUSED_REGNUM ;
 long V0_REGNUM ;
 scalar_t__ VM_MIN_ADDRESS ;
 int WS ;
 int X ;
 long XSTRING (int ) ;
 long ZERO_REGNUM ;
 long _PROC_MAGIC_ ;
 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int * mips_abi_strings ;
 int mips_mask_address_p (struct gdbarch_tdep*) ;
 long mips_saved_regsize (struct gdbarch_tdep*) ;
 long mips_stack_argsize (struct gdbarch_tdep*) ;

__attribute__((used)) static void
mips_dump_tdep (struct gdbarch *current_gdbarch, struct ui_file *file)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  if (tdep != ((void*)0))
    {
      int ef_mips_arch;
      int ef_mips_32bitmode;

      switch (tdep->elf_flags & EF_MIPS_ARCH)
 {
 case 131:
   ef_mips_arch = 1;
   break;
 case 130:
   ef_mips_arch = 2;
   break;
 case 129:
   ef_mips_arch = 3;
   break;
 case 128:
   ef_mips_arch = 4;
   break;
 default:
   ef_mips_arch = 0;
   break;
 }

      ef_mips_32bitmode = (tdep->elf_flags & EF_MIPS_32BITMODE);
      fprintf_unfiltered (file,
     "mips_dump_tdep: tdep->elf_flags = 0x%x\n",
     tdep->elf_flags);
      fprintf_unfiltered (file,
     "mips_dump_tdep: ef_mips_32bitmode = %d\n",
     ef_mips_32bitmode);
      fprintf_unfiltered (file,
     "mips_dump_tdep: ef_mips_arch = %d\n",
     ef_mips_arch);
      fprintf_unfiltered (file,
     "mips_dump_tdep: tdep->mips_abi = %d (%s)\n",
     tdep->mips_abi, mips_abi_strings[tdep->mips_abi]);
      fprintf_unfiltered (file,
     "mips_dump_tdep: mips_mask_address_p() %d (default %d)\n",
     mips_mask_address_p (tdep),
     tdep->default_mask_address_p);
    }
  fprintf_unfiltered (file,
        "mips_dump_tdep: FP_REGISTER_DOUBLE = %d\n",
        FP_REGISTER_DOUBLE);
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS_DEFAULT_FPU_TYPE = %d (%s)\n",
        MIPS_DEFAULT_FPU_TYPE,
        (MIPS_DEFAULT_FPU_TYPE == MIPS_FPU_NONE ? "none"
         : MIPS_DEFAULT_FPU_TYPE == MIPS_FPU_SINGLE ? "single"
         : MIPS_DEFAULT_FPU_TYPE == MIPS_FPU_DOUBLE ? "double"
         : "???"));
  fprintf_unfiltered (file, "mips_dump_tdep: MIPS_EABI = %d\n", MIPS_EABI);
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS_FPU_TYPE = %d (%s)\n",
        MIPS_FPU_TYPE,
        (MIPS_FPU_TYPE == MIPS_FPU_NONE ? "none"
         : MIPS_FPU_TYPE == MIPS_FPU_SINGLE ? "single"
         : MIPS_FPU_TYPE == MIPS_FPU_DOUBLE ? "double"
         : "???"));
  fprintf_unfiltered (file,
        "mips_dump_tdep: FP_REGISTER_DOUBLE = %d\n",
        FP_REGISTER_DOUBLE);
  fprintf_unfiltered (file,
        "mips_dump_tdep: mips_stack_argsize() = %d\n",
        mips_stack_argsize (tdep));
  fprintf_unfiltered (file, "mips_dump_tdep: A0_REGNUM = %d\n", A0_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: ADDR_BITS_REMOVE # %s\n",
        XSTRING (ADDR_BITS_REMOVE (ADDR)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: ATTACH_DETACH # %s\n",
        XSTRING (ATTACH_DETACH));
  fprintf_unfiltered (file,
        "mips_dump_tdep: DWARF_REG_TO_REGNUM # %s\n",
        XSTRING (DWARF_REG_TO_REGNUM (REGNUM)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: ECOFF_REG_TO_REGNUM # %s\n",
        XSTRING (ECOFF_REG_TO_REGNUM (REGNUM)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: FIRST_EMBED_REGNUM = %d\n",
        FIRST_EMBED_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: IGNORE_HELPER_CALL # %s\n",
        XSTRING (IGNORE_HELPER_CALL (PC)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: IN_SOLIB_CALL_TRAMPOLINE # %s\n",
        XSTRING (IN_SOLIB_CALL_TRAMPOLINE (PC, NAME)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: IN_SOLIB_RETURN_TRAMPOLINE # %s\n",
        XSTRING (IN_SOLIB_RETURN_TRAMPOLINE (PC, NAME)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: LAST_EMBED_REGNUM = %d\n",
        LAST_EMBED_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS16_INSTLEN = %d\n",
        MIPS16_INSTLEN);
  fprintf_unfiltered (file, "mips_dump_tdep: MIPS_DEFAULT_ABI = FIXME!\n");
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS_EFI_SYMBOL_NAME = multi-arch!!\n");
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS_INSTLEN = %d\n", MIPS_INSTLEN);
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS_LAST_ARG_REGNUM = %d (%d regs)\n",
        MIPS_LAST_ARG_REGNUM,
        MIPS_LAST_ARG_REGNUM - A0_REGNUM + 1);
  fprintf_unfiltered (file,
        "mips_dump_tdep: MIPS_NUMREGS = %d\n", MIPS_NUMREGS);
  fprintf_unfiltered (file,
        "mips_dump_tdep: mips_saved_regsize() = %d\n",
        mips_saved_regsize (tdep));
  fprintf_unfiltered (file,
        "mips_dump_tdep: PRID_REGNUM = %d\n", PRID_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: PROC_DESC_IS_DUMMY = function?\n");
  fprintf_unfiltered (file,
        "mips_dump_tdep: PROC_FRAME_ADJUST = function?\n");
  fprintf_unfiltered (file,
        "mips_dump_tdep: PROC_FRAME_OFFSET = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_FRAME_REG = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_FREG_MASK = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_FREG_OFFSET = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_HIGH_ADDR = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_LOW_ADDR = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_PC_REG = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_REG_MASK = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_REG_OFFSET = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PROC_SYMBOL = function?\n");
  fprintf_unfiltered (file, "mips_dump_tdep: PS_REGNUM = %d\n", PS_REGNUM);
  fprintf_unfiltered (file, "mips_dump_tdep: RA_REGNUM = %d\n", RA_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: SETUP_ARBITRARY_FRAME # %s\n",
        XSTRING (SETUP_ARBITRARY_FRAME (NUMARGS, ARGS)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: SET_PROC_DESC_IS_DUMMY = function?\n");
  fprintf_unfiltered (file,
        "mips_dump_tdep: SKIP_TRAMPOLINE_CODE # %s\n",
        XSTRING (SKIP_TRAMPOLINE_CODE (PC)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: SOFTWARE_SINGLE_STEP # %s\n",
        XSTRING (SOFTWARE_SINGLE_STEP (SIG, BP_P)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: SOFTWARE_SINGLE_STEP_P () = %d\n",
        SOFTWARE_SINGLE_STEP_P ());
  fprintf_unfiltered (file,
        "mips_dump_tdep: STAB_REG_TO_REGNUM # %s\n",
        XSTRING (STAB_REG_TO_REGNUM (REGNUM)));





  fprintf_unfiltered (file,
        "mips_dump_tdep: STEP_SKIPS_DELAY # %s\n",
        XSTRING (STEP_SKIPS_DELAY (PC)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: STEP_SKIPS_DELAY_P = %d\n",
        STEP_SKIPS_DELAY_P);
  fprintf_unfiltered (file,
        "mips_dump_tdep: STOPPED_BY_WATCHPOINT # %s\n",
        XSTRING (STOPPED_BY_WATCHPOINT (WS)));
  fprintf_unfiltered (file, "mips_dump_tdep: T9_REGNUM = %d\n", T9_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: TABULAR_REGISTER_OUTPUT = used?\n");
  fprintf_unfiltered (file,
        "mips_dump_tdep: TARGET_CAN_USE_HARDWARE_WATCHPOINT # %s\n",
        XSTRING (TARGET_CAN_USE_HARDWARE_WATCHPOINT
          (TYPE, CNT, OTHERTYPE)));
  fprintf_unfiltered (file,
        "mips_dump_tdep: TARGET_HAS_HARDWARE_WATCHPOINTS # %s\n",
        XSTRING (TARGET_HAS_HARDWARE_WATCHPOINTS));
  fprintf_unfiltered (file, "mips_dump_tdep: V0_REGNUM = %d\n", V0_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: VM_MIN_ADDRESS = %ld\n",
        (long) VM_MIN_ADDRESS);
  fprintf_unfiltered (file,
        "mips_dump_tdep: ZERO_REGNUM = %d\n", ZERO_REGNUM);
  fprintf_unfiltered (file,
        "mips_dump_tdep: _PROC_MAGIC_ = %d\n", _PROC_MAGIC_);
}
