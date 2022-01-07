
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_info (char*,int ,char*) ;
 int no_class ;
 int show_copying_command ;
 int show_warranty_command ;
 int showlist ;

void
_initialize_copying (void)
{
  add_cmd ("copying", no_class, show_copying_command,
    "Conditions for redistributing copies of GDB.",
    &showlist);
  add_cmd ("warranty", no_class, show_warranty_command,
    "Various kinds of warranty you do not have.",
    &showlist);


  add_info ("copying", show_copying_command,
     "Conditions for redistributing copies of GDB.");
  add_info ("warranty", show_warranty_command,
     "Various kinds of warranty you do not have.");
}
