
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_NETBSD_ELF ;
 int add_core_fns (int *) ;
 int bfd_arch_mips ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int mipsnbsd_core_fns ;
 int mipsnbsd_elfcore_fns ;
 int mipsnbsd_init_abi ;

void
_initialize_mipsnbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_mips, 0, GDB_OSABI_NETBSD_ELF,
     mipsnbsd_init_abi);

  add_core_fns (&mipsnbsd_core_fns);
  add_core_fns (&mipsnbsd_elfcore_fns);
}
