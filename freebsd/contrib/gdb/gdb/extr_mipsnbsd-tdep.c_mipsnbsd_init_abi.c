
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int gdbarch_ptr_bit (struct gdbarch*) ;
 int mips_software_single_step ;
 int mipsnbsd_cannot_fetch_register ;
 int mipsnbsd_cannot_store_register ;
 int mipsnbsd_get_longjmp_target ;
 int mipsnbsd_ilp32_solib_svr4_fetch_link_map_offsets ;
 int mipsnbsd_lp64_solib_svr4_fetch_link_map_offsets ;
 int mipsnbsd_pc_in_sigtramp ;
 int set_gdbarch_cannot_fetch_register (struct gdbarch*,int ) ;
 int set_gdbarch_cannot_store_register (struct gdbarch*,int ) ;
 int set_gdbarch_get_longjmp_target (struct gdbarch*,int ) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_software_single_step (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;

__attribute__((used)) static void
mipsnbsd_init_abi (struct gdbarch_info info,
                   struct gdbarch *gdbarch)
{
  set_gdbarch_pc_in_sigtramp (gdbarch, mipsnbsd_pc_in_sigtramp);

  set_gdbarch_get_longjmp_target (gdbarch, mipsnbsd_get_longjmp_target);

  set_gdbarch_cannot_fetch_register (gdbarch, mipsnbsd_cannot_fetch_register);
  set_gdbarch_cannot_store_register (gdbarch, mipsnbsd_cannot_store_register);

  set_gdbarch_software_single_step (gdbarch, mips_software_single_step);

  set_solib_svr4_fetch_link_map_offsets (gdbarch,
      gdbarch_ptr_bit (gdbarch) == 32 ?
                            mipsnbsd_ilp32_solib_svr4_fetch_link_map_offsets :
       mipsnbsd_lp64_solib_svr4_fetch_link_map_offsets);
}
