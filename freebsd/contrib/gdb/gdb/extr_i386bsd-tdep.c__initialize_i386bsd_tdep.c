
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_arch_i386 ;
 int bfd_arch_unknown ;
 int bfd_target_aout_flavour ;
 int bfd_target_unknown_flavour ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;
 int i386bsd_aout_osabi_sniffer ;
 int i386bsd_core_osabi_sniffer ;

void
_initialize_i386bsd_tdep (void)
{
  gdbarch_register_osabi_sniffer (bfd_arch_i386, bfd_target_aout_flavour,
      i386bsd_aout_osabi_sniffer);



  gdbarch_register_osabi_sniffer (bfd_arch_unknown, bfd_target_unknown_flavour,
      i386bsd_core_osabi_sniffer);
}
