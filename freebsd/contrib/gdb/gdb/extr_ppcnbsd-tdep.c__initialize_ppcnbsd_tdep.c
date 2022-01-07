
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_NETBSD_ELF ;
 int add_core_fns (int *) ;
 int bfd_arch_powerpc ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int ppcnbsd_core_fns ;
 int ppcnbsd_elfcore_fns ;
 int ppcnbsd_init_abi ;

void
_initialize_ppcnbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_powerpc, 0, GDB_OSABI_NETBSD_ELF,
     ppcnbsd_init_abi);

  add_core_fns (&ppcnbsd_core_fns);
  add_core_fns (&ppcnbsd_elfcore_fns);
}
