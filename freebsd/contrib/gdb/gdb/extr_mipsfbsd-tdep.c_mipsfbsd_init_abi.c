
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int find_solib_trampoline_target ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 int mips_software_single_step ;
 int mipsfbsd_cannot_fetch_register ;
 int mipsfbsd_cannot_store_register ;
 int mipsfbsd_get_longjmp_target ;
 int mipsfbsd_ilp32_solib_svr4_fetch_link_map_offsets ;
 int mipsfbsd_in_stub_section ;
 int mipsfbsd_pc_in_sigtramp ;
 int mipsfbsd_sigtramp_frame_sniffer ;
 int mipsfbsd_stub_frame_sniffer ;
 int set_gdbarch_cannot_fetch_register (struct gdbarch*,int ) ;
 int set_gdbarch_cannot_store_register (struct gdbarch*,int ) ;
 int set_gdbarch_get_longjmp_target (struct gdbarch*,int ) ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_skip_trampoline_code (struct gdbarch*,int ) ;
 int set_gdbarch_software_single_step (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;

__attribute__((used)) static void
mipsfbsd_init_abi (struct gdbarch_info info,
                   struct gdbarch *gdbarch)
{
  set_gdbarch_pc_in_sigtramp (gdbarch, mipsfbsd_pc_in_sigtramp);

  set_gdbarch_get_longjmp_target (gdbarch, mipsfbsd_get_longjmp_target);

  set_gdbarch_cannot_fetch_register (gdbarch, mipsfbsd_cannot_fetch_register);
  set_gdbarch_cannot_store_register (gdbarch, mipsfbsd_cannot_store_register);

  set_gdbarch_software_single_step (gdbarch, mips_software_single_step);
  set_solib_svr4_fetch_link_map_offsets (gdbarch,
             mipsfbsd_ilp32_solib_svr4_fetch_link_map_offsets);
  set_gdbarch_skip_trampoline_code (gdbarch, find_solib_trampoline_target);
  set_gdbarch_in_solib_call_trampoline (gdbarch, mipsfbsd_in_stub_section);


  frame_unwind_append_sniffer (gdbarch, mipsfbsd_sigtramp_frame_sniffer);
  frame_unwind_append_sniffer (gdbarch, mipsfbsd_stub_frame_sniffer);

}
