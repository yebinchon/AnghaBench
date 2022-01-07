
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_ELF ;
 int amd64fbsd_init_abi ;
 int bfd_arch_i386 ;
 int bfd_mach_x86_64 ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;

void
_initialize_amd64fbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_i386, bfd_mach_x86_64,
     GDB_OSABI_FREEBSD_ELF, amd64fbsd_init_abi);
}
