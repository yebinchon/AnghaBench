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
struct gdbarch_tdep {int /*<<< orphan*/  find_global_pointer; int /*<<< orphan*/ * sigcontext_register_address; int /*<<< orphan*/  osabi; } ;
struct gdbarch_list {struct gdbarch* gdbarch; } ;
struct gdbarch_info {int /*<<< orphan*/  osabi; } ;
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/ * TYPE_FLOATFORMAT ;

/* Variables and functions */
 scalar_t__ FIRST_PSEUDO_REGNUM ; 
 int /*<<< orphan*/  IA64_FR0_REGNUM ; 
 scalar_t__ LAST_PSEUDO_REGNUM ; 
 int /*<<< orphan*/  NUM_IA64_RAW_REGS ; 
 int /*<<< orphan*/  TYPE_CODE_FLT ; 
 int /*<<< orphan*/ * builtin_type_ia64_ext ; 
 int /*<<< orphan*/  core_addr_lessthan ; 
 int /*<<< orphan*/  floatformat_i387_ext ; 
 int /*<<< orphan*/  floatformat_ia64_ext ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch* FUNC2 (struct gdbarch_info*,struct gdbarch_tdep*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch_info,struct gdbarch*) ; 
 struct gdbarch_list* FUNC4 (struct gdbarch_list*,struct gdbarch_info*) ; 
 int /*<<< orphan*/  ia64_breakpoint_from_pc ; 
 int /*<<< orphan*/  ia64_convert_from_func_ptr_addr ; 
 int /*<<< orphan*/  ia64_convert_register_p ; 
 int /*<<< orphan*/  ia64_dwarf_reg_to_regnum ; 
 int /*<<< orphan*/  ia64_extract_return_value ; 
 int /*<<< orphan*/  ia64_extract_struct_value_address ; 
 int /*<<< orphan*/  ia64_frame_align ; 
 int /*<<< orphan*/  ia64_frame_base ; 
 int /*<<< orphan*/  ia64_frame_sniffer ; 
 int /*<<< orphan*/  ia64_generic_find_global_pointer ; 
 int /*<<< orphan*/  ia64_libunwind_descr ; 
 int /*<<< orphan*/  ia64_libunwind_frame_sniffer ; 
 int /*<<< orphan*/  ia64_memory_insert_breakpoint ; 
 int /*<<< orphan*/  ia64_memory_remove_breakpoint ; 
 int /*<<< orphan*/  ia64_print_insn ; 
 int /*<<< orphan*/  ia64_pseudo_register_read ; 
 int /*<<< orphan*/  ia64_pseudo_register_write ; 
 int /*<<< orphan*/  ia64_push_dummy_call ; 
 int /*<<< orphan*/  ia64_read_pc ; 
 int /*<<< orphan*/  ia64_register_name ; 
 int /*<<< orphan*/  ia64_register_reggroup_p ; 
 int /*<<< orphan*/  ia64_register_to_value ; 
 int /*<<< orphan*/  ia64_register_type ; 
 int /*<<< orphan*/  ia64_remote_translate_xfer_address ; 
 int /*<<< orphan*/  ia64_sigtramp_frame_sniffer ; 
 int /*<<< orphan*/  ia64_skip_prologue ; 
 int /*<<< orphan*/  ia64_store_return_value ; 
 int /*<<< orphan*/  ia64_unwind_dummy_id ; 
 int /*<<< orphan*/  ia64_unwind_pc ; 
 int /*<<< orphan*/  ia64_use_struct_convention ; 
 int /*<<< orphan*/  ia64_value_to_register ; 
 int /*<<< orphan*/  ia64_write_pc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct gdbarch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC40 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp_regnum ; 
 struct gdbarch_tdep* FUNC48 (int) ; 

__attribute__((used)) static struct gdbarch *
FUNC49 (struct gdbarch_info info, struct gdbarch_list *arches)
{
  struct gdbarch *gdbarch;
  struct gdbarch_tdep *tdep;

  /* If there is already a candidate, use it.  */
  arches = FUNC4 (arches, &info);
  if (arches != NULL)
    return arches->gdbarch;

  tdep = FUNC48 (sizeof (struct gdbarch_tdep));
  gdbarch = FUNC2 (&info, tdep);
  tdep->osabi = info.osabi;
  tdep->sigcontext_register_address = NULL;
  tdep->find_global_pointer = ia64_generic_find_global_pointer;

  /* Define the ia64 floating-point format to gdb.  */
  builtin_type_ia64_ext =
    FUNC5 (TYPE_CODE_FLT, 128 / 8,
               0, "builtin_type_ia64_ext", NULL);
  TYPE_FLOATFORMAT (builtin_type_ia64_ext) = &floatformat_ia64_ext;

  /* According to the ia64 specs, instructions that store long double
     floats in memory use a long-double format different than that
     used in the floating registers.  The memory format matches the
     x86 extended float format which is 80 bits.  An OS may choose to
     use this format (e.g. GNU/Linux) or choose to use a different
     format for storing long doubles (e.g. HPUX).  In the latter case,
     the setting of the format may be moved/overridden in an
     OS-specific tdep file.  */
  FUNC22 (gdbarch, &floatformat_i387_ext);

  FUNC39 (gdbarch, 16);
  FUNC19 (gdbarch, 32);
  FUNC20 (gdbarch, 64);
  FUNC23 (gdbarch, 64);
  FUNC15 (gdbarch, 32);
  FUNC12 (gdbarch, 64);
  FUNC21 (gdbarch, 128);
  FUNC31 (gdbarch, 64);

  FUNC27 (gdbarch, NUM_IA64_RAW_REGS);
  FUNC26 (gdbarch, LAST_PSEUDO_REGNUM - FIRST_PSEUDO_REGNUM);
  FUNC41 (gdbarch, sp_regnum);
  FUNC16 (gdbarch, IA64_FR0_REGNUM);

  FUNC34 (gdbarch, ia64_register_name);
  /* FIXME:  Following interface should not be needed, however, without it recurse.exp
     gets a number of extra failures.  */
  FUNC11 (gdbarch, 8);
  FUNC37 (gdbarch, ia64_register_type);

  FUNC29 (gdbarch, ia64_pseudo_register_read);
  FUNC30 (gdbarch, ia64_pseudo_register_write);
  FUNC13 (gdbarch, ia64_dwarf_reg_to_regnum);
  FUNC35 (gdbarch, ia64_register_reggroup_p);
  FUNC9 (gdbarch, ia64_convert_register_p);
  FUNC36 (gdbarch, ia64_register_to_value);
  FUNC46 (gdbarch, ia64_value_to_register);

  FUNC40 (gdbarch, ia64_skip_prologue);

  FUNC45 (gdbarch, ia64_use_struct_convention);
  FUNC14 (gdbarch, ia64_extract_return_value);

  FUNC42 (gdbarch, ia64_store_return_value);
  FUNC10 (gdbarch, ia64_extract_struct_value_address);

  FUNC24 (gdbarch, ia64_memory_insert_breakpoint);
  FUNC25 (gdbarch, ia64_memory_remove_breakpoint);
  FUNC7 (gdbarch, ia64_breakpoint_from_pc);
  FUNC33 (gdbarch, ia64_read_pc);
  FUNC47 (gdbarch, ia64_write_pc);

  /* Settings for calling functions in the inferior.  */
  FUNC32 (gdbarch, ia64_push_dummy_call);
  FUNC17 (gdbarch, ia64_frame_align);
  FUNC43 (gdbarch, ia64_unwind_dummy_id);

  FUNC44 (gdbarch, ia64_unwind_pc);
  FUNC1 (gdbarch, ia64_sigtramp_frame_sniffer);
#ifdef HAVE_LIBUNWIND_IA64_H
  frame_unwind_append_sniffer (gdbarch, ia64_libunwind_frame_sniffer);
  libunwind_frame_set_descr (gdbarch, &ia64_libunwind_descr);
#endif
  FUNC1 (gdbarch, ia64_frame_sniffer);
  FUNC0 (gdbarch, &ia64_frame_base);

  /* Settings that should be unnecessary.  */
  FUNC18 (gdbarch, core_addr_lessthan);

  FUNC38 (
    gdbarch, ia64_remote_translate_xfer_address);

  FUNC28 (gdbarch, ia64_print_insn);
  FUNC8 (gdbarch, ia64_convert_from_func_ptr_addr);

  FUNC3 (info, gdbarch);

  return gdbarch;
}