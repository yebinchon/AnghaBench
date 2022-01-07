
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int struct_return; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int generic_in_solib_call_trampoline ;
 int i386_elf_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int i386nbsd_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int pcc_struct_return ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_ilp32_fetch_link_map_offsets ;

__attribute__((used)) static void
i386nbsdelf_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386nbsd_init_abi (info, gdbarch);


  i386_elf_init_abi (info, gdbarch);


  set_gdbarch_in_solib_call_trampoline
    (gdbarch, generic_in_solib_call_trampoline);
  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, svr4_ilp32_fetch_link_map_offsets);


  tdep->struct_return = pcc_struct_return;
}
