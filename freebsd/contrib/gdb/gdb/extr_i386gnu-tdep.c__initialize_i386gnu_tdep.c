
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_HURD ;
 int bfd_arch_i386 ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int i386gnu_init_abi ;

void
_initialize_i386gnu_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_HURD, i386gnu_init_abi);
}
