
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int find_global_pointer; int * sigcontext_register_address; int osabi; } ;
struct gdbarch_list {struct gdbarch* gdbarch; } ;
struct gdbarch_info {int osabi; } ;
struct gdbarch {int dummy; } ;
typedef int * TYPE_FLOATFORMAT ;


 scalar_t__ FIRST_PSEUDO_REGNUM ;
 int IA64_FR0_REGNUM ;
 scalar_t__ LAST_PSEUDO_REGNUM ;
 int NUM_IA64_RAW_REGS ;
 int TYPE_CODE_FLT ;
 int * builtin_type_ia64_ext ;
 int core_addr_lessthan ;
 int floatformat_i387_ext ;
 int floatformat_ia64_ext ;
 int frame_base_set_default (struct gdbarch*,int *) ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 struct gdbarch* gdbarch_alloc (struct gdbarch_info*,struct gdbarch_tdep*) ;
 int gdbarch_init_osabi (struct gdbarch_info,struct gdbarch*) ;
 struct gdbarch_list* gdbarch_list_lookup_by_info (struct gdbarch_list*,struct gdbarch_info*) ;
 int ia64_breakpoint_from_pc ;
 int ia64_convert_from_func_ptr_addr ;
 int ia64_convert_register_p ;
 int ia64_dwarf_reg_to_regnum ;
 int ia64_extract_return_value ;
 int ia64_extract_struct_value_address ;
 int ia64_frame_align ;
 int ia64_frame_base ;
 int ia64_frame_sniffer ;
 int ia64_generic_find_global_pointer ;
 int ia64_libunwind_descr ;
 int ia64_libunwind_frame_sniffer ;
 int ia64_memory_insert_breakpoint ;
 int ia64_memory_remove_breakpoint ;
 int ia64_print_insn ;
 int ia64_pseudo_register_read ;
 int ia64_pseudo_register_write ;
 int ia64_push_dummy_call ;
 int ia64_read_pc ;
 int ia64_register_name ;
 int ia64_register_reggroup_p ;
 int ia64_register_to_value ;
 int ia64_register_type ;
 int ia64_remote_translate_xfer_address ;
 int ia64_sigtramp_frame_sniffer ;
 int ia64_skip_prologue ;
 int ia64_store_return_value ;
 int ia64_unwind_dummy_id ;
 int ia64_unwind_pc ;
 int ia64_use_struct_convention ;
 int ia64_value_to_register ;
 int ia64_write_pc ;
 int init_type (int ,int,int ,char*,int *) ;
 int libunwind_frame_set_descr (struct gdbarch*,int *) ;
 int set_gdbarch_breakpoint_from_pc (struct gdbarch*,int ) ;
 int set_gdbarch_convert_from_func_ptr_addr (struct gdbarch*,int ) ;
 int set_gdbarch_convert_register_p (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_extract_struct_value_address (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_size (struct gdbarch*,int) ;
 int set_gdbarch_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_dwarf2_reg_to_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_extract_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_float_bit (struct gdbarch*,int) ;
 int set_gdbarch_fp0_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_frame_align (struct gdbarch*,int ) ;
 int set_gdbarch_inner_than (struct gdbarch*,int ) ;
 int set_gdbarch_int_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_double_format (struct gdbarch*,int *) ;
 int set_gdbarch_long_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_memory_insert_breakpoint (struct gdbarch*,int ) ;
 int set_gdbarch_memory_remove_breakpoint (struct gdbarch*,int ) ;
 int set_gdbarch_num_pseudo_regs (struct gdbarch*,scalar_t__) ;
 int set_gdbarch_num_regs (struct gdbarch*,int ) ;
 int set_gdbarch_print_insn (struct gdbarch*,int ) ;
 int set_gdbarch_pseudo_register_read (struct gdbarch*,int ) ;
 int set_gdbarch_pseudo_register_write (struct gdbarch*,int ) ;
 int set_gdbarch_ptr_bit (struct gdbarch*,int) ;
 int set_gdbarch_push_dummy_call (struct gdbarch*,int ) ;
 int set_gdbarch_read_pc (struct gdbarch*,int ) ;
 int set_gdbarch_register_name (struct gdbarch*,int ) ;
 int set_gdbarch_register_reggroup_p (struct gdbarch*,int ) ;
 int set_gdbarch_register_to_value (struct gdbarch*,int ) ;
 int set_gdbarch_register_type (struct gdbarch*,int ) ;
 int set_gdbarch_remote_translate_xfer_address (struct gdbarch*,int ) ;
 int set_gdbarch_short_bit (struct gdbarch*,int) ;
 int set_gdbarch_skip_prologue (struct gdbarch*,int ) ;
 int set_gdbarch_sp_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_store_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_unwind_dummy_id (struct gdbarch*,int ) ;
 int set_gdbarch_unwind_pc (struct gdbarch*,int ) ;
 int set_gdbarch_use_struct_convention (struct gdbarch*,int ) ;
 int set_gdbarch_value_to_register (struct gdbarch*,int ) ;
 int set_gdbarch_write_pc (struct gdbarch*,int ) ;
 int sp_regnum ;
 struct gdbarch_tdep* xmalloc (int) ;

__attribute__((used)) static struct gdbarch *
ia64_gdbarch_init (struct gdbarch_info info, struct gdbarch_list *arches)
{
  struct gdbarch *gdbarch;
  struct gdbarch_tdep *tdep;


  arches = gdbarch_list_lookup_by_info (arches, &info);
  if (arches != ((void*)0))
    return arches->gdbarch;

  tdep = xmalloc (sizeof (struct gdbarch_tdep));
  gdbarch = gdbarch_alloc (&info, tdep);
  tdep->osabi = info.osabi;
  tdep->sigcontext_register_address = ((void*)0);
  tdep->find_global_pointer = ia64_generic_find_global_pointer;


  builtin_type_ia64_ext =
    init_type (TYPE_CODE_FLT, 128 / 8,
               0, "builtin_type_ia64_ext", ((void*)0));
  TYPE_FLOATFORMAT (builtin_type_ia64_ext) = &floatformat_ia64_ext;
  set_gdbarch_long_double_format (gdbarch, &floatformat_i387_ext);

  set_gdbarch_short_bit (gdbarch, 16);
  set_gdbarch_int_bit (gdbarch, 32);
  set_gdbarch_long_bit (gdbarch, 64);
  set_gdbarch_long_long_bit (gdbarch, 64);
  set_gdbarch_float_bit (gdbarch, 32);
  set_gdbarch_double_bit (gdbarch, 64);
  set_gdbarch_long_double_bit (gdbarch, 128);
  set_gdbarch_ptr_bit (gdbarch, 64);

  set_gdbarch_num_regs (gdbarch, NUM_IA64_RAW_REGS);
  set_gdbarch_num_pseudo_regs (gdbarch, LAST_PSEUDO_REGNUM - FIRST_PSEUDO_REGNUM);
  set_gdbarch_sp_regnum (gdbarch, sp_regnum);
  set_gdbarch_fp0_regnum (gdbarch, IA64_FR0_REGNUM);

  set_gdbarch_register_name (gdbarch, ia64_register_name);


  set_gdbarch_deprecated_register_size (gdbarch, 8);
  set_gdbarch_register_type (gdbarch, ia64_register_type);

  set_gdbarch_pseudo_register_read (gdbarch, ia64_pseudo_register_read);
  set_gdbarch_pseudo_register_write (gdbarch, ia64_pseudo_register_write);
  set_gdbarch_dwarf2_reg_to_regnum (gdbarch, ia64_dwarf_reg_to_regnum);
  set_gdbarch_register_reggroup_p (gdbarch, ia64_register_reggroup_p);
  set_gdbarch_convert_register_p (gdbarch, ia64_convert_register_p);
  set_gdbarch_register_to_value (gdbarch, ia64_register_to_value);
  set_gdbarch_value_to_register (gdbarch, ia64_value_to_register);

  set_gdbarch_skip_prologue (gdbarch, ia64_skip_prologue);

  set_gdbarch_use_struct_convention (gdbarch, ia64_use_struct_convention);
  set_gdbarch_extract_return_value (gdbarch, ia64_extract_return_value);

  set_gdbarch_store_return_value (gdbarch, ia64_store_return_value);
  set_gdbarch_deprecated_extract_struct_value_address (gdbarch, ia64_extract_struct_value_address);

  set_gdbarch_memory_insert_breakpoint (gdbarch, ia64_memory_insert_breakpoint);
  set_gdbarch_memory_remove_breakpoint (gdbarch, ia64_memory_remove_breakpoint);
  set_gdbarch_breakpoint_from_pc (gdbarch, ia64_breakpoint_from_pc);
  set_gdbarch_read_pc (gdbarch, ia64_read_pc);
  set_gdbarch_write_pc (gdbarch, ia64_write_pc);


  set_gdbarch_push_dummy_call (gdbarch, ia64_push_dummy_call);
  set_gdbarch_frame_align (gdbarch, ia64_frame_align);
  set_gdbarch_unwind_dummy_id (gdbarch, ia64_unwind_dummy_id);

  set_gdbarch_unwind_pc (gdbarch, ia64_unwind_pc);
  frame_unwind_append_sniffer (gdbarch, ia64_sigtramp_frame_sniffer);




  frame_unwind_append_sniffer (gdbarch, ia64_frame_sniffer);
  frame_base_set_default (gdbarch, &ia64_frame_base);


  set_gdbarch_inner_than (gdbarch, core_addr_lessthan);

  set_gdbarch_remote_translate_xfer_address (
    gdbarch, ia64_remote_translate_xfer_address);

  set_gdbarch_print_insn (gdbarch, ia64_print_insn);
  set_gdbarch_convert_from_func_ptr_addr (gdbarch, ia64_convert_from_func_ptr_addr);

  gdbarch_init_osabi (info, gdbarch);

  return gdbarch;
}
