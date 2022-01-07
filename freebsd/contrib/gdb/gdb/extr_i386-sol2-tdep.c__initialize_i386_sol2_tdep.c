
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_SOLARIS ;
 int bfd_arch_i386 ;
 int bfd_target_elf_flavour ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;
 int i386_sol2_init_abi ;
 int i386_sol2_osabi_sniffer ;

void
_initialize_i386_sol2_tdep (void)
{

  gdbarch_register_osabi_sniffer (bfd_arch_i386, bfd_target_elf_flavour,
      i386_sol2_osabi_sniffer);

  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_SOLARIS,
     i386_sol2_init_abi);
}
