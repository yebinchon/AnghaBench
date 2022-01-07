
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_ELF ;
 int bfd_arch_powerpc ;
 int bfd_arch_rs6000 ;
 int bfd_mach_ppc ;
 int bfd_mach_ppc64 ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int ppcfbsd_init_abi ;

void
_initialize_ppcfbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_powerpc, bfd_mach_ppc,
     GDB_OSABI_FREEBSD_ELF, ppcfbsd_init_abi);
  gdbarch_register_osabi (bfd_arch_powerpc, bfd_mach_ppc64,
     GDB_OSABI_FREEBSD_ELF, ppcfbsd_init_abi);
  gdbarch_register_osabi (bfd_arch_rs6000, 0, GDB_OSABI_FREEBSD_ELF,
     ppcfbsd_init_abi);
}
