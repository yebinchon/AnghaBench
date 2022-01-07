
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int num_xmm_regs; int mm0_regnum; scalar_t__ gregset_reg_offset; int st0_regnum; int sizeof_fpregset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int AMD64_EFLAGS_REGNUM ;
 int AMD64_NUM_REGS ;
 int AMD64_RIP_REGNUM ;
 int AMD64_RSP_REGNUM ;
 int AMD64_ST0_REGNUM ;
 int I387_SIZEOF_FXSAVE ;
 int amd64_convert_register_p ;
 int amd64_dwarf_reg_to_regnum ;
 int amd64_frame_align ;
 int amd64_frame_base ;
 int amd64_frame_sniffer ;
 int amd64_push_dummy_call ;
 int amd64_register_name ;
 int amd64_register_type ;
 int amd64_regset_from_core_section ;
 int amd64_return_value ;
 int amd64_sigtramp_frame_sniffer ;
 int amd64_skip_prologue ;
 int amd64_unwind_dummy_id ;
 int frame_base_set_default (struct gdbarch*,int *) ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i387_register_to_value ;
 int i387_value_to_register ;
 int in_plt_section ;
 int set_gdbarch_convert_register_p (struct gdbarch*,int ) ;
 int set_gdbarch_dwarf2_reg_to_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_dwarf_reg_to_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_fp0_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_frame_align (struct gdbarch*,int ) ;
 int set_gdbarch_frame_red_zone_size (struct gdbarch*,int) ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_gdbarch_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_num_pseudo_regs (struct gdbarch*,int ) ;
 int set_gdbarch_num_regs (struct gdbarch*,int ) ;
 int set_gdbarch_pc_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_ps_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_ptr_bit (struct gdbarch*,int) ;
 int set_gdbarch_push_dummy_call (struct gdbarch*,int ) ;
 int set_gdbarch_register_name (struct gdbarch*,int ) ;
 int set_gdbarch_register_to_value (struct gdbarch*,int ) ;
 int set_gdbarch_register_type (struct gdbarch*,int ) ;
 int set_gdbarch_regset_from_core_section (struct gdbarch*,int ) ;
 int set_gdbarch_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_skip_prologue (struct gdbarch*,int ) ;
 int set_gdbarch_sp_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_stab_reg_to_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_unwind_dummy_id (struct gdbarch*,int ) ;
 int set_gdbarch_value_to_register (struct gdbarch*,int ) ;

void
amd64_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);



  tdep->sizeof_fpregset = I387_SIZEOF_FXSAVE;


  tdep->st0_regnum = AMD64_ST0_REGNUM;
  tdep->num_xmm_regs = 16;


  set_gdbarch_long_bit (gdbarch, 64);
  set_gdbarch_long_long_bit (gdbarch, 64);
  set_gdbarch_ptr_bit (gdbarch, 64);




  set_gdbarch_long_double_bit (gdbarch, 128);

  set_gdbarch_num_regs (gdbarch, AMD64_NUM_REGS);
  set_gdbarch_register_name (gdbarch, amd64_register_name);
  set_gdbarch_register_type (gdbarch, amd64_register_type);


  set_gdbarch_sp_regnum (gdbarch, AMD64_RSP_REGNUM);
  set_gdbarch_pc_regnum (gdbarch, AMD64_RIP_REGNUM);
  set_gdbarch_ps_regnum (gdbarch, AMD64_EFLAGS_REGNUM);
  set_gdbarch_fp0_regnum (gdbarch, AMD64_ST0_REGNUM);







  set_gdbarch_stab_reg_to_regnum (gdbarch, amd64_dwarf_reg_to_regnum);
  set_gdbarch_dwarf_reg_to_regnum (gdbarch, amd64_dwarf_reg_to_regnum);
  set_gdbarch_dwarf2_reg_to_regnum (gdbarch, amd64_dwarf_reg_to_regnum);





  set_gdbarch_push_dummy_call (gdbarch, amd64_push_dummy_call);
  set_gdbarch_frame_align (gdbarch, amd64_frame_align);
  set_gdbarch_frame_red_zone_size (gdbarch, 128);

  set_gdbarch_convert_register_p (gdbarch, amd64_convert_register_p);
  set_gdbarch_register_to_value (gdbarch, i387_register_to_value);
  set_gdbarch_value_to_register (gdbarch, i387_value_to_register);

  set_gdbarch_return_value (gdbarch, amd64_return_value);

  set_gdbarch_skip_prologue (gdbarch, amd64_skip_prologue);


  set_gdbarch_num_pseudo_regs (gdbarch, 0);
  tdep->mm0_regnum = -1;

  set_gdbarch_unwind_dummy_id (gdbarch, amd64_unwind_dummy_id);




  set_gdbarch_in_solib_call_trampoline (gdbarch, in_plt_section);

  frame_unwind_append_sniffer (gdbarch, amd64_sigtramp_frame_sniffer);
  frame_unwind_append_sniffer (gdbarch, amd64_frame_sniffer);
  frame_base_set_default (gdbarch, &amd64_frame_base);


  if (tdep->gregset_reg_offset)
    set_gdbarch_regset_from_core_section (gdbarch,
       amd64_regset_from_core_section);
}
