
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int kod_set_os ;
 int no_class ;
 int operating_system ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int setlist ;
 int showlist ;
 int var_string ;

void
_initialize_kod (void)
{
  struct cmd_list_element *c;

  c = add_set_cmd ("os", no_class, var_string,
     (char *) &operating_system,
     "Set operating system",
     &setlist);
  set_cmd_sfunc (c, kod_set_os);
  add_show_from_set (c, &showlist);
}
