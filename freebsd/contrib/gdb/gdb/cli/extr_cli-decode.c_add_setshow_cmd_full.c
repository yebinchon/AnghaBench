
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_types ;
struct cmd_list_element {int dummy; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;
typedef int cmd_sfunc_ftype ;


 struct cmd_list_element* add_set_or_show_cmd (char*,int ,int,int ,void*,char*,struct cmd_list_element**) ;
 int set_cmd ;
 int set_cmd_sfunc (struct cmd_list_element*,int *) ;
 int show_cmd ;

void
add_setshow_cmd_full (char *name,
        enum command_class class,
        var_types var_type, void *var,
        char *set_doc, char *show_doc,
        cmd_sfunc_ftype *set_func, cmd_sfunc_ftype *show_func,
        struct cmd_list_element **set_list,
        struct cmd_list_element **show_list,
        struct cmd_list_element **set_result,
        struct cmd_list_element **show_result)
{
  struct cmd_list_element *set;
  struct cmd_list_element *show;
  set = add_set_or_show_cmd (name, set_cmd, class, var_type, var,
        set_doc, set_list);
  if (set_func != ((void*)0))
    set_cmd_sfunc (set, set_func);
  show = add_set_or_show_cmd (name, show_cmd, class, var_type, var,
         show_doc, show_list);
  if (show_func != ((void*)0))
    set_cmd_sfunc (show, show_func);

  if (set_result != ((void*)0))
    *set_result = set;
  if (show_result != ((void*)0))
    *show_result = show;
}
