
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int class_info ;
 int info_common_command ;
 scalar_t__ xdb_commands ;

void
_initialize_f_valprint (void)
{
  add_info ("common", info_common_command,
     "Print out the values contained in a Fortran COMMON block.");
  if (xdb_commands)
    add_com ("lc", class_info, info_common_command,
      "Print out the values contained in a Fortran COMMON block.");
}
