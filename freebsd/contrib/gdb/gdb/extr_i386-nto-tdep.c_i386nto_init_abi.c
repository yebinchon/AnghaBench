
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int sc_pc_offset; int sc_sp_offset; int jb_pc_offset; int sigcontext_addr; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int TARGET_SO_FIND_AND_OPEN_SOLIB ;
 int TARGET_SO_RELOCATE_SECTION_ADDRESSES ;
 int find_solib_trampoline_target ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386_elf_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int i386nto_pc_in_sigtramp ;
 int i386nto_sigcontext_addr ;
 int i386nto_svr4_fetch_link_map_offsets ;
 int in_plt_section ;
 int init_i386nto_ops () ;
 int nto_find_and_open_solib ;
 int nto_relocate_section_addresses ;
 int set_gdbarch_decr_pc_after_break (struct gdbarch*,int ) ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_skip_trampoline_code (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;

__attribute__((used)) static void
i386nto_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386_elf_init_abi (info, gdbarch);



  set_gdbarch_decr_pc_after_break (gdbarch, 0);


  set_gdbarch_in_solib_call_trampoline (gdbarch, in_plt_section);
  set_gdbarch_skip_trampoline_code (gdbarch, find_solib_trampoline_target);

  set_gdbarch_pc_in_sigtramp (gdbarch, i386nto_pc_in_sigtramp);
  tdep->sigcontext_addr = i386nto_sigcontext_addr;
  tdep->sc_pc_offset = 56;
  tdep->sc_sp_offset = 68;


  tdep->jb_pc_offset = 20;

  set_solib_svr4_fetch_link_map_offsets (gdbarch,
      i386nto_svr4_fetch_link_map_offsets);


  TARGET_SO_RELOCATE_SECTION_ADDRESSES = nto_relocate_section_addresses;


  TARGET_SO_FIND_AND_OPEN_SOLIB = nto_find_and_open_solib;

  init_i386nto_ops ();
}
