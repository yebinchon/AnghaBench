
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sizeof_gregset; int sizeof_fpregset; int gregset_num_regs; int sc_num_regs; int gregset_reg_offset; int sc_reg_offset; int sigcontext_addr; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386_sol2_gregset_reg_offset ;
 int i386_sol2_mcontext_addr ;
 int i386_sol2_pc_in_sigtramp ;
 int i386_svr4_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;

__attribute__((used)) static void
i386_sol2_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386_svr4_init_abi (info, gdbarch);




  tdep->gregset_reg_offset = i386_sol2_gregset_reg_offset;
  tdep->gregset_num_regs = ARRAY_SIZE (i386_sol2_gregset_reg_offset);
  tdep->sizeof_gregset = 19 * 4;
  tdep->sizeof_fpregset = 380;

  tdep->sigcontext_addr = i386_sol2_mcontext_addr;
  tdep->sc_reg_offset = tdep->gregset_reg_offset;
  tdep->sc_num_regs = tdep->gregset_num_regs;


  set_gdbarch_pc_in_sigtramp (gdbarch, i386_sol2_pc_in_sigtramp);
}
