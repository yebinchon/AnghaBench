
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 struct cmd_list_element* add_show_from_set (struct cmd_list_element*,int *) ;
 int class_maintenance ;
 int deprecate_cmd (struct cmd_list_element*,char*) ;
 int gdbarch_debug ;
 int setdebuglist ;
 int setlist ;
 int showdebuglist ;
 int showlist ;
 int var_zinteger ;

void
_initialize_gdbarch (void)
{
  struct cmd_list_element *c;

  add_show_from_set (add_set_cmd ("arch",
      class_maintenance,
      var_zinteger,
      (char *)&gdbarch_debug,
      "Set architecture debugging.\nWhen non-zero, architecture debugging is enabled.", &setdebuglist),

       &showdebuglist);
  c = add_set_cmd ("archdebug",
     class_maintenance,
     var_zinteger,
     (char *)&gdbarch_debug,
     "Set architecture debugging.\nWhen non-zero, architecture debugging is enabled.", &setlist);


  deprecate_cmd (c, "set debug arch");
  deprecate_cmd (add_show_from_set (c, &showlist), "show debug arch");
}
