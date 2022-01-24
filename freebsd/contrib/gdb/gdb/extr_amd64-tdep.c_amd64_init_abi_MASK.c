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
struct gdbarch_tdep {int num_xmm_regs; int mm0_regnum; scalar_t__ gregset_reg_offset; int /*<<< orphan*/  st0_regnum; int /*<<< orphan*/  sizeof_fpregset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_EFLAGS_REGNUM ; 
 int /*<<< orphan*/  AMD64_NUM_REGS ; 
 int /*<<< orphan*/  AMD64_RIP_REGNUM ; 
 int /*<<< orphan*/  AMD64_RSP_REGNUM ; 
 int /*<<< orphan*/  AMD64_ST0_REGNUM ; 
 int /*<<< orphan*/  I387_SIZEOF_FXSAVE ; 
 int /*<<< orphan*/  amd64_convert_register_p ; 
 int /*<<< orphan*/  amd64_dwarf_reg_to_regnum ; 
 int /*<<< orphan*/  amd64_frame_align ; 
 int /*<<< orphan*/  amd64_frame_base ; 
 int /*<<< orphan*/  amd64_frame_sniffer ; 
 int /*<<< orphan*/  amd64_push_dummy_call ; 
 int /*<<< orphan*/  amd64_register_name ; 
 int /*<<< orphan*/  amd64_register_type ; 
 int /*<<< orphan*/  amd64_regset_from_core_section ; 
 int /*<<< orphan*/  amd64_return_value ; 
 int /*<<< orphan*/  amd64_sigtramp_frame_sniffer ; 
 int /*<<< orphan*/  amd64_skip_prologue ; 
 int /*<<< orphan*/  amd64_unwind_dummy_id ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC2 (struct gdbarch*) ; 
 int /*<<< orphan*/  i387_register_to_value ; 
 int /*<<< orphan*/  i387_value_to_register ; 
 int /*<<< orphan*/  in_plt_section ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct gdbarch*,int /*<<< orphan*/ ) ; 

void
FUNC29 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC2 (gdbarch);

  /* AMD64 generally uses `fxsave' instead of `fsave' for saving its
     floating-point registers.  */
  tdep->sizeof_fpregset = I387_SIZEOF_FXSAVE;

  /* AMD64 has an FPU and 16 SSE registers.  */
  tdep->st0_regnum = AMD64_ST0_REGNUM;
  tdep->num_xmm_regs = 16;

  /* This is what all the fuss is about.  */
  FUNC10 (gdbarch, 64);
  FUNC12 (gdbarch, 64);
  FUNC17 (gdbarch, 64);

  /* In contrast to the i386, on AMD64 a `long double' actually takes
     up 128 bits, even though it's still based on the i387 extended
     floating-point format which has only 80 significant bits.  */
  FUNC11 (gdbarch, 128);

  FUNC14 (gdbarch, AMD64_NUM_REGS);
  FUNC19 (gdbarch, amd64_register_name);
  FUNC21 (gdbarch, amd64_register_type);

  /* Register numbers of various important registers.  */
  FUNC25 (gdbarch, AMD64_RSP_REGNUM); /* %rsp */
  FUNC15 (gdbarch, AMD64_RIP_REGNUM); /* %rip */
  FUNC16 (gdbarch, AMD64_EFLAGS_REGNUM); /* %eflags */
  FUNC6 (gdbarch, AMD64_ST0_REGNUM); /* %st(0) */

  /* The "default" register numbering scheme for AMD64 is referred to
     as the "DWARF Register Number Mapping" in the System V psABI.
     The preferred debugging format for all known AMD64 targets is
     actually DWARF2, and GCC doesn't seem to support DWARF (that is
     DWARF-1), but we provide the same mapping just in case.  This
     mapping is also used for stabs, which GCC does support.  */
  FUNC26 (gdbarch, amd64_dwarf_reg_to_regnum);
  FUNC5 (gdbarch, amd64_dwarf_reg_to_regnum);
  FUNC4 (gdbarch, amd64_dwarf_reg_to_regnum);

  /* We don't override SDB_REG_RO_REGNUM, since COFF doesn't seem to
     be in use on any of the supported AMD64 targets.  */

  /* Call dummy code.  */
  FUNC18 (gdbarch, amd64_push_dummy_call);
  FUNC7 (gdbarch, amd64_frame_align);
  FUNC8 (gdbarch, 128);

  FUNC3 (gdbarch, amd64_convert_register_p);
  FUNC20 (gdbarch, i387_register_to_value);
  FUNC28 (gdbarch, i387_value_to_register);

  FUNC23 (gdbarch, amd64_return_value);

  FUNC24 (gdbarch, amd64_skip_prologue);

  /* Avoid wiring in the MMX registers for now.  */
  FUNC13 (gdbarch, 0);
  tdep->mm0_regnum = -1;

  FUNC27 (gdbarch, amd64_unwind_dummy_id);

  /* FIXME: kettenis/20021026: This is ELF-specific.  Fine for now,
     since all supported AMD64 targets are ELF, but that might change
     in the future.  */
  FUNC9 (gdbarch, in_plt_section);

  FUNC1 (gdbarch, amd64_sigtramp_frame_sniffer);
  FUNC1 (gdbarch, amd64_frame_sniffer);
  FUNC0 (gdbarch, &amd64_frame_base);

  /* If we have a register mapping, enable the generic core file support.  */
  if (tdep->gregset_reg_offset)
    FUNC22 (gdbarch,
					  amd64_regset_from_core_section);
}