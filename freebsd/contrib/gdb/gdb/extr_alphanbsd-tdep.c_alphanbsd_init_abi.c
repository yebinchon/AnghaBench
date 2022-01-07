
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int jb_pc; int jb_elt_size; int sigcontext_addr; int dynamic_sigtramp_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int alpha_dwarf2_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int alpha_mdebug_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int alpha_software_single_step ;
 int alphanbsd_pc_in_sigtramp ;
 int alphanbsd_sigcontext_addr ;
 int alphanbsd_sigtramp_offset ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int nbsd_lp64_solib_svr4_fetch_link_map_offsets ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_software_single_step (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;

__attribute__((used)) static void
alphanbsd_init_abi (struct gdbarch_info info,
                    struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  alpha_dwarf2_init_abi (info, gdbarch);


  alpha_mdebug_init_abi (info, gdbarch);

  set_gdbarch_pc_in_sigtramp (gdbarch, alphanbsd_pc_in_sigtramp);



  set_gdbarch_software_single_step (gdbarch, alpha_software_single_step);

  set_solib_svr4_fetch_link_map_offsets (gdbarch,
                                 nbsd_lp64_solib_svr4_fetch_link_map_offsets);

  tdep->dynamic_sigtramp_offset = alphanbsd_sigtramp_offset;
  tdep->sigcontext_addr = alphanbsd_sigcontext_addr;

  tdep->jb_pc = 2;
  tdep->jb_elt_size = 8;
}
