
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sizeof_gregset; void* sc_num_regs; void* sc_reg_offset; int sigcontext_addr; int sigtramp_end; int sigtramp_start; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 int amd64_init_abi (struct gdbarch_info,struct gdbarch*) ;
 void* amd64fbsd_r_reg_offset ;
 void* amd64fbsd_sc_reg_offset ;
 int amd64fbsd_sigcontext_addr ;
 int amd64fbsd_sigtramp_end_addr ;
 int amd64fbsd_sigtramp_start_addr ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386bsd_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_lp64_fetch_link_map_offsets ;

void
amd64fbsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386bsd_init_abi (info, gdbarch);

  tdep->gregset_reg_offset = amd64fbsd_r_reg_offset;
  tdep->gregset_num_regs = ARRAY_SIZE (amd64fbsd_r_reg_offset);
  tdep->sizeof_gregset = 22 * 8;

  amd64_init_abi (info, gdbarch);

  tdep->sigtramp_start = amd64fbsd_sigtramp_start_addr;
  tdep->sigtramp_end = amd64fbsd_sigtramp_end_addr;
  tdep->sigcontext_addr = amd64fbsd_sigcontext_addr;
  tdep->sc_reg_offset = amd64fbsd_sc_reg_offset;
  tdep->sc_num_regs = ARRAY_SIZE (amd64fbsd_sc_reg_offset);


  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, svr4_lp64_fetch_link_map_offsets);
}
