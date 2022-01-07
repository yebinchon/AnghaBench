
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_NETBSD_AOUT ;
 int GDB_OSABI_NETBSD_ELF ;
 int arm_netbsd_aout_init_abi ;
 int arm_netbsd_aout_osabi_sniffer ;
 int arm_netbsd_elf_init_abi ;
 int bfd_arch_arm ;
 int bfd_target_aout_flavour ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;

void
_initialize_arm_netbsd_tdep (void)
{
  gdbarch_register_osabi_sniffer (bfd_arch_arm, bfd_target_aout_flavour,
      arm_netbsd_aout_osabi_sniffer);

  gdbarch_register_osabi (bfd_arch_arm, 0, GDB_OSABI_NETBSD_AOUT,
                          arm_netbsd_aout_init_abi);
  gdbarch_register_osabi (bfd_arch_arm, 0, GDB_OSABI_NETBSD_ELF,
                          arm_netbsd_elf_init_abi);
}
