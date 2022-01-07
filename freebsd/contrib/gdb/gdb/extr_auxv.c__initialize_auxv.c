
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_info (char*,int ,char*) ;
 int info_auxv_command ;

void
_initialize_auxv (void)
{
  add_info ("auxv", info_auxv_command,
     "Display the inferior's auxiliary vector.\nThis is information provided by the operating system at program startup.");

}
