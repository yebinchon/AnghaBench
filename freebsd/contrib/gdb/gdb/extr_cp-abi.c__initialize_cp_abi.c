
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int auto_cp_abi ;
 int class_obscure ;
 int register_cp_abi (int *) ;
 int set_cp_abi_cmd ;
 int setlist ;
 int show_cp_abi_cmd ;
 int showlist ;
 int switch_to_cp_abi (char*) ;

void
_initialize_cp_abi (void)
{
  register_cp_abi (&auto_cp_abi);
  switch_to_cp_abi ("auto");

  add_cmd ("cp-abi", class_obscure, set_cp_abi_cmd,
    "Set the ABI used for inspecting C++ objects.\n"
    "\"set cp-abi\" with no arguments will list the available ABIs.",
    &setlist);

  add_cmd ("cp-abi", class_obscure, show_cp_abi_cmd,
    "Show the ABI used for inspecting C++ objects.", &showlist);
}
