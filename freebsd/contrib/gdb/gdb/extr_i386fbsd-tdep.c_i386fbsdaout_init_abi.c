
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sizeof_gregset; int sizeof_fpregset; void* sc_num_regs; void* sc_reg_offset; int sigtramp_end; int sigtramp_start; int struct_return; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386bsd_init_abi (struct gdbarch_info,struct gdbarch*) ;
 void* i386fbsd_r_reg_offset ;
 void* i386fbsd_sc_reg_offset ;
 int i386fbsd_sigtramp_end_addr ;
 int i386fbsd_sigtramp_start_addr ;
 int reg_struct_return ;

__attribute__((used)) static void
i386fbsdaout_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386bsd_init_abi (info, gdbarch);



  tdep->gregset_reg_offset = i386fbsd_r_reg_offset;
  tdep->gregset_num_regs = ARRAY_SIZE (i386fbsd_r_reg_offset);
  tdep->sizeof_gregset = 18 * 4;
  tdep->sizeof_fpregset = 176;


  tdep->struct_return = reg_struct_return;


  tdep->sigtramp_start = i386fbsd_sigtramp_start_addr;
  tdep->sigtramp_end = i386fbsd_sigtramp_end_addr;


  tdep->sc_reg_offset = i386fbsd_sc_reg_offset;
  tdep->sc_num_regs = ARRAY_SIZE (i386fbsd_sc_reg_offset);
}
