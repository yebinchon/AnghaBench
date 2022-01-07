
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int var; int var_type; int class; int name; int doc; } ;
typedef int setstring ;


 struct cmd_list_element* add_set_or_show_cmd (int ,int ,int ,int ,int ,char*,struct cmd_list_element**) ;
 char* concat (char*,int ,int *) ;
 int gdb_assert (int) ;
 int show_cmd ;
 scalar_t__ strncmp (int ,char const*,int) ;

struct cmd_list_element *
add_show_from_set (struct cmd_list_element *setcmd,
     struct cmd_list_element **list)
{
  char *doc;
  const static char setstring[] = "Set ";



  gdb_assert (strncmp (setcmd->doc, setstring, sizeof (setstring) - 1) == 0);
  doc = concat ("Show ", setcmd->doc + sizeof (setstring) - 1, ((void*)0));


  return add_set_or_show_cmd (setcmd->name, show_cmd, setcmd->class,
         setcmd->var_type, setcmd->var, doc, list);
}
