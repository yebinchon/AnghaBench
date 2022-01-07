
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sc_pc_offset; int sc_regs_offset; int sc_fpregs_offset; int jb_pc; int jb_elt_size; int sigcontext_addr; int dynamic_sigtramp_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int alpha_dwarf2_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int alpha_mdebug_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int alphafbsd_pc_in_sigtramp ;
 int alphafbsd_sigcontext_addr ;
 int alphafbsd_sigtramp_offset ;
 int alphafbsd_use_struct_convention ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_use_struct_convention (struct gdbarch*,int ) ;

__attribute__((used)) static void
alphafbsd_init_abi (struct gdbarch_info info,
                    struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  alpha_dwarf2_init_abi (info, gdbarch);


  alpha_mdebug_init_abi (info, gdbarch);

  set_gdbarch_use_struct_convention (gdbarch, alphafbsd_use_struct_convention);

  set_gdbarch_pc_in_sigtramp (gdbarch, alphafbsd_pc_in_sigtramp);

  tdep->dynamic_sigtramp_offset = alphafbsd_sigtramp_offset;
  tdep->sigcontext_addr = alphafbsd_sigcontext_addr;
  tdep->sc_pc_offset = 288;
  tdep->sc_regs_offset = 24;
  tdep->sc_fpregs_offset = 320;

  tdep->jb_pc = 2;
  tdep->jb_elt_size = 8;
}
