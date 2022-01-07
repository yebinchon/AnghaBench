
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_ELF ;
 int bfd_arch_ia64 ;
 int gdbarch_register_osabi (int ,unsigned long,int ,int ) ;
 int ia64_fbsd_init_abi ;

void
_initialize_ia64_fbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_ia64, 0ul, GDB_OSABI_FREEBSD_ELF,
                          ia64_fbsd_init_abi);
}
