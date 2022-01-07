
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char* prefixname; scalar_t__ type; char* name; struct cmd_list_element** prefixlist; int abbrev_flag; struct cmd_list_element* next; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int do_setshow_command (char*,int,struct cmd_list_element*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 scalar_t__ show_cmd ;
 int ui_out_field_string (int ,char*,char*) ;
 int ui_out_text (int ,char*) ;
 int uiout ;

void
cmd_show_list (struct cmd_list_element *list, int from_tty, char *prefix)
{
  struct cleanup *showlist_chain;

  showlist_chain = make_cleanup_ui_out_tuple_begin_end (uiout, "showlist");
  for (; list != ((void*)0); list = list->next)
    {


      if (list->prefixlist && !list->abbrev_flag)
 {
   struct cleanup *optionlist_chain
     = make_cleanup_ui_out_tuple_begin_end (uiout, "optionlist");
   ui_out_field_string (uiout, "prefix", list->prefixname + 5);
   cmd_show_list (*list->prefixlist, from_tty, list->prefixname + 5);

   do_cleanups (optionlist_chain);
 }
      if (list->type == show_cmd)
 {
   struct cleanup *option_chain
     = make_cleanup_ui_out_tuple_begin_end (uiout, "option");
   ui_out_text (uiout, prefix);
   ui_out_field_string (uiout, "name", list->name);
   ui_out_text (uiout, ":  ");
   do_setshow_command ((char *) ((void*)0), from_tty, list);

   do_cleanups (option_chain);
 }
    }

  do_cleanups (showlist_chain);
}
