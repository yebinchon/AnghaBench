
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int list_cp_abis (int) ;
 int switch_to_cp_abi (char*) ;

__attribute__((used)) static void
set_cp_abi_cmd (char *args, int from_tty)
{
  if (args == ((void*)0))
    {
      list_cp_abis (from_tty);
      return;
    }

  if (!switch_to_cp_abi (args))
    error ("Could not find \"%s\" in ABI list", args);
}
