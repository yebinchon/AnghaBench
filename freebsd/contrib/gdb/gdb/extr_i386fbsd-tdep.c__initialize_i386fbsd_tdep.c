
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_AOUT ;
 int GDB_OSABI_FREEBSD_ELF ;
 int bfd_arch_i386 ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int i386fbsd4_init_abi ;
 int i386fbsdaout_init_abi ;

void
_initialize_i386fbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_FREEBSD_AOUT,
     i386fbsdaout_init_abi);
  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_FREEBSD_ELF,
     i386fbsd4_init_abi);
}
