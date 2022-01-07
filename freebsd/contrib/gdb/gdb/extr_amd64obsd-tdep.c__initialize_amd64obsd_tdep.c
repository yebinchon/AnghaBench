
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AMD64_NUM_GREGS ;
 scalar_t__ ARRAY_SIZE (int ) ;
 int GDB_OSABI_NETBSD_AOUT ;
 int GDB_OSABI_OPENBSD_ELF ;
 int amd64obsd_init_abi ;
 int amd64obsd_r_reg_offset ;
 int bfd_arch_i386 ;
 int bfd_mach_x86_64 ;
 int gdb_assert (int) ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;

void
_initialize_amd64obsd_tdep (void)
{

  gdb_assert (ARRAY_SIZE (amd64obsd_r_reg_offset) == AMD64_NUM_GREGS);

  gdbarch_register_osabi (bfd_arch_i386, bfd_mach_x86_64,
     GDB_OSABI_OPENBSD_ELF, amd64obsd_init_abi);


  gdbarch_register_osabi (bfd_arch_i386, bfd_mach_x86_64,
     GDB_OSABI_NETBSD_AOUT, amd64obsd_init_abi);
}
