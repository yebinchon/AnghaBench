
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int GDB_OSABI_GO32 ;
 int GDB_OSABI_NETWARE ;
 int GDB_OSABI_SVR4 ;
 struct cmd_list_element* add_set_enum_cmd (char*,int ,int ,int *,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int bfd_arch_i386 ;
 int bfd_target_coff_flavour ;
 int bfd_target_nlm_flavour ;
 int disassembly_flavor ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;
 int i386_coff_osabi_sniffer ;
 int i386_gdbarch_init ;
 int i386_go32_init_abi ;
 int i386_init_reggroups () ;
 int i386_nlm_osabi_sniffer ;
 int i386_nw_init_abi ;
 int i386_svr4_init_abi ;
 int no_class ;
 int register_gdbarch_init (int ,int ) ;
 int setlist ;
 int showlist ;
 int struct_convention ;
 int valid_conventions ;
 int valid_flavors ;

void
_initialize_i386_tdep (void)
{
  register_gdbarch_init (bfd_arch_i386, i386_gdbarch_init);


  {
    struct cmd_list_element *new_cmd;

    new_cmd = add_set_enum_cmd ("disassembly-flavor", no_class,
    valid_flavors,
    &disassembly_flavor,
    "Set the disassembly flavor, the valid values are \"att\" and \"intel\", and the default value is \"att\".",


    &setlist);
    add_show_from_set (new_cmd, &showlist);
  }



  {
    struct cmd_list_element *new_cmd;

    new_cmd = add_set_enum_cmd ("struct-convention", no_class,
    valid_conventions,
    &struct_convention, "Set the convention for returning small structs, valid values are \"default\", \"pcc\" and \"reg\", and the default value is \"default\".",


                                &setlist);
    add_show_from_set (new_cmd, &showlist);
  }

  gdbarch_register_osabi_sniffer (bfd_arch_i386, bfd_target_coff_flavour,
      i386_coff_osabi_sniffer);
  gdbarch_register_osabi_sniffer (bfd_arch_i386, bfd_target_nlm_flavour,
      i386_nlm_osabi_sniffer);

  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_SVR4,
     i386_svr4_init_abi);
  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_GO32,
     i386_go32_init_abi);
  gdbarch_register_osabi (bfd_arch_i386, 0, GDB_OSABI_NETWARE,
     i386_nw_init_abi);


  i386_init_reggroups ();
}
