
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_NETBSD_ELF ;
 int GDB_OSABI_OPENBSD_ELF ;
 int add_core_fns (int *) ;
 int alphanbsd_core_fns ;
 int alphanbsd_elfcore_fns ;
 int alphanbsd_init_abi ;
 int bfd_arch_alpha ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;

void
_initialize_alphanbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_alpha, 0, GDB_OSABI_NETBSD_ELF,
                          alphanbsd_init_abi);
  gdbarch_register_osabi (bfd_arch_alpha, 0, GDB_OSABI_OPENBSD_ELF,
                          alphanbsd_init_abi);

  add_core_fns (&alphanbsd_core_fns);
  add_core_fns (&alphanbsd_elfcore_fns);
}
