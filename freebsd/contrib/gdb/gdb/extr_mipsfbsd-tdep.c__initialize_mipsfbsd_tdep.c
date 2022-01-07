
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_ELF ;
 int add_core_fns (int *) ;
 int bfd_arch_mips ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int mipsfbsd_core_fns ;
 int mipsfbsd_elfcore_fns ;
 int mipsfbsd_init_abi ;

void
_initialize_mipsfbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_mips, 0, GDB_OSABI_FREEBSD_ELF,
     mipsfbsd_init_abi);
  add_core_fns (&mipsfbsd_core_fns);
  add_core_fns (&mipsfbsd_elfcore_fns);
}
