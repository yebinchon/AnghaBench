
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sizeof_gregset; void* sc_num_regs; void* sc_reg_offset; int struct_return; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386bsd_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int i386nbsd_pc_in_sigtramp ;
 void* i386nbsd_r_reg_offset ;
 void* i386nbsd_sc_reg_offset ;
 int reg_struct_return ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_sigtramp_end (struct gdbarch*,int *) ;
 int set_gdbarch_sigtramp_start (struct gdbarch*,int *) ;

__attribute__((used)) static void
i386nbsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386bsd_init_abi (info, gdbarch);


  tdep->gregset_reg_offset = i386nbsd_r_reg_offset;
  tdep->gregset_num_regs = ARRAY_SIZE (i386nbsd_r_reg_offset);
  tdep->sizeof_gregset = 16 * 4;


  set_gdbarch_pc_in_sigtramp (gdbarch, i386nbsd_pc_in_sigtramp);



  set_gdbarch_sigtramp_start (gdbarch, ((void*)0));
  set_gdbarch_sigtramp_end (gdbarch, ((void*)0));


  tdep->struct_return = reg_struct_return;



  tdep->sc_reg_offset = i386nbsd_sc_reg_offset;
  tdep->sc_num_regs = ARRAY_SIZE (i386nbsd_sc_reg_offset);
}
