
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct cmd_list_element {scalar_t__ abbrev_flag; int class; char* prefixname; struct cmd_list_element** prefixlist; int doc; int name; int * func; struct cmd_list_element* next; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 int all_classes ;
 int all_commands ;
 int fprintf_filtered (struct ui_file*,char*,char*,int ) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int print_doc_line (struct ui_file*,int ) ;

void
help_cmd_list (struct cmd_list_element *list, enum command_class class,
        char *prefix, int recurse, struct ui_file *stream)
{
  struct cmd_list_element *c;

  for (c = list; c; c = c->next)
    {
      if (c->abbrev_flag == 0 &&
   (class == all_commands
    || (class == all_classes && c->func == ((void*)0))
    || (class == c->class && c->func != ((void*)0))))
 {
   fprintf_filtered (stream, "%s%s -- ", prefix, c->name);
   print_doc_line (stream, c->doc);
   fputs_filtered ("\n", stream);
 }
      if (recurse
   && c->prefixlist != 0
   && c->abbrev_flag == 0)
 help_cmd_list (*c->prefixlist, class, c->prefixname, 1, stream);
    }
}
