
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int find_global_pointer; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int ia64_fbsd_pc_in_sigtramp ;
 int ia64_fbsd_regset_from_core_section ;
 int ia64_generic_find_global_pointer ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_regset_from_core_section (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_lp64_fetch_link_map_offsets ;

__attribute__((used)) static void
ia64_fbsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  set_gdbarch_pc_in_sigtramp (gdbarch, ia64_fbsd_pc_in_sigtramp);
  set_gdbarch_regset_from_core_section (gdbarch,
                                        ia64_fbsd_regset_from_core_section);
  set_solib_svr4_fetch_link_map_offsets (gdbarch,
      svr4_lp64_fetch_link_map_offsets);
  tdep->find_global_pointer = ia64_generic_find_global_pointer;
}
