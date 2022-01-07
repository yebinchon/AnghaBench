
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int generic_in_solib_call_trampoline ;
 int i386_elf_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int i386fbsdaout_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_ilp32_fetch_link_map_offsets ;

__attribute__((used)) static void
i386fbsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{

  i386fbsdaout_init_abi (info, gdbarch);


  i386_elf_init_abi (info, gdbarch);


  set_gdbarch_in_solib_call_trampoline
    (gdbarch, generic_in_solib_call_trampoline);
  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, svr4_ilp32_fetch_link_map_offsets);
}
