
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_ELF ;
 int alphafbsd_init_abi ;
 int bfd_arch_alpha ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;

void
_initialize_alphafbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_alpha, 0, GDB_OSABI_FREEBSD_ELF,
                          alphafbsd_init_abi);
}
