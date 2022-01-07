
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sizeof_gregset; int jb_pc_offset; void* sc_num_regs; void* sc_reg_offset; int sigcontext_addr; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 int amd64_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int amd64obsd_pc_in_sigtramp ;
 void* amd64obsd_r_reg_offset ;
 int amd64obsd_regset_from_core_section ;
 void* amd64obsd_sc_reg_offset ;
 int amd64obsd_sigcontext_addr ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_regset_from_core_section (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_lp64_fetch_link_map_offsets ;

__attribute__((used)) static void
amd64obsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  amd64_init_abi (info, gdbarch);


  tdep->gregset_reg_offset = amd64obsd_r_reg_offset;
  tdep->gregset_num_regs = ARRAY_SIZE (amd64obsd_r_reg_offset);
  tdep->sizeof_gregset = 24 * 8;

  set_gdbarch_regset_from_core_section (gdbarch,
     amd64obsd_regset_from_core_section);

  tdep->jb_pc_offset = 7 * 8;

  set_gdbarch_pc_in_sigtramp (gdbarch, amd64obsd_pc_in_sigtramp);
  tdep->sigcontext_addr = amd64obsd_sigcontext_addr;
  tdep->sc_reg_offset = amd64obsd_sc_reg_offset;
  tdep->sc_num_regs = ARRAY_SIZE (amd64obsd_sc_reg_offset);


  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, svr4_lp64_fetch_link_map_offsets);
}
