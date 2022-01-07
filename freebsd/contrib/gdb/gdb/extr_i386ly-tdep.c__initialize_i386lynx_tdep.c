
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_LYNXOS ;
 int bfd_arch_i386 ;
 int bfd_target_coff_flavour ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;
 int i386lynx_coff_osabi_sniffer ;
 int i386lynx_init_abi ;

void
_initialize_i386lynx_tdep (void)
{
  gdbarch_register_osabi_sniffer (bfd_arch_i386, bfd_target_coff_flavour,
      i386lynx_coff_osabi_sniffer);

  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_LYNXOS,
     i386lynx_init_abi);
}
