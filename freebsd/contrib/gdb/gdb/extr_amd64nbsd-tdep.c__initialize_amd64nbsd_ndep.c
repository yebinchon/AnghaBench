
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AMD64_NUM_GREGS ;
 scalar_t__ ARRAY_SIZE (int ) ;
 int GDB_OSABI_NETBSD_ELF ;
 int amd64nbsd_init_abi ;
 int amd64nbsd_r_reg_offset ;
 int bfd_arch_i386 ;
 int bfd_mach_x86_64 ;
 int gdb_assert (int) ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;

void
_initialize_amd64nbsd_ndep (void)
{

  gdb_assert (ARRAY_SIZE (amd64nbsd_r_reg_offset) == AMD64_NUM_GREGS);

  gdbarch_register_osabi (bfd_arch_i386, bfd_mach_x86_64,
     GDB_OSABI_NETBSD_ELF, amd64nbsd_init_abi);
}
