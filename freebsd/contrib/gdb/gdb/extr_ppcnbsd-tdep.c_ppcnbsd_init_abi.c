
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int nbsd_ilp32_solib_svr4_fetch_link_map_offsets ;
 int ppcnbsd_pc_in_sigtramp ;
 int ppcnbsd_return_value ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_return_value (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;

__attribute__((used)) static void
ppcnbsd_init_abi (struct gdbarch_info info,
                  struct gdbarch *gdbarch)
{
  set_gdbarch_pc_in_sigtramp (gdbarch, ppcnbsd_pc_in_sigtramp);


  set_gdbarch_return_value (gdbarch, ppcnbsd_return_value);
  set_solib_svr4_fetch_link_map_offsets (gdbarch,
                                nbsd_ilp32_solib_svr4_fetch_link_map_offsets);
}
