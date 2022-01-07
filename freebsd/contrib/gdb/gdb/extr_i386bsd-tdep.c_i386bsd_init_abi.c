
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sigtramp_start; int sigtramp_end; int sc_num_regs; int sc_reg_offset; int sigcontext_addr; scalar_t__ jb_pc_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386bsd_aout_in_solib_call_trampoline ;
 int i386bsd_pc_in_sigtramp ;
 int i386bsd_sc_reg_offset ;
 int i386bsd_sigcontext_addr ;
 int i386bsd_sigtramp_end ;
 int i386bsd_sigtramp_start ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_sigtramp_end (struct gdbarch*,int ) ;
 int set_gdbarch_sigtramp_start (struct gdbarch*,int ) ;

void
i386bsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  set_gdbarch_pc_in_sigtramp (gdbarch, i386bsd_pc_in_sigtramp);


  set_gdbarch_sigtramp_start (gdbarch, i386bsd_sigtramp_start);
  set_gdbarch_sigtramp_end (gdbarch, i386bsd_sigtramp_end);


  set_gdbarch_in_solib_call_trampoline (gdbarch,
     i386bsd_aout_in_solib_call_trampoline);

  tdep->jb_pc_offset = 0;

  tdep->sigtramp_start = 0xfdbfdfc0;
  tdep->sigtramp_end = 0xfdbfe000;
  tdep->sigcontext_addr = i386bsd_sigcontext_addr;
  tdep->sc_reg_offset = i386bsd_sc_reg_offset;
  tdep->sc_num_regs = ARRAY_SIZE (i386bsd_sc_reg_offset);
}
