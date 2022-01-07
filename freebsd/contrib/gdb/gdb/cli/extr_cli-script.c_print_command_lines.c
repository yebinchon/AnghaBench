
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct command_line {scalar_t__ control_type; char* line; int body_count; struct command_line* next; struct command_line** body_list; } ;


 scalar_t__ break_control ;
 scalar_t__ continue_control ;
 scalar_t__ if_control ;
 scalar_t__ simple_control ;
 int ui_out_field_fmt (struct ui_out*,int *,char*,char*) ;
 int ui_out_field_string (struct ui_out*,int *,char*) ;
 int ui_out_spaces (struct ui_out*,int) ;
 int ui_out_text (struct ui_out*,char*) ;
 scalar_t__ while_control ;

void
print_command_lines (struct ui_out *uiout, struct command_line *cmd,
       unsigned int depth)
{
  struct command_line *list;

  list = cmd;
  while (list)
    {

      if (depth)
 ui_out_spaces (uiout, 2 * depth);


      if (list->control_type == simple_control)
 {
   ui_out_field_string (uiout, ((void*)0), list->line);
   ui_out_text (uiout, "\n");
   list = list->next;
   continue;
 }



      if (list->control_type == continue_control)
 {
   ui_out_field_string (uiout, ((void*)0), "loop_continue");
   ui_out_text (uiout, "\n");
   list = list->next;
   continue;
 }


      if (list->control_type == break_control)
 {
   ui_out_field_string (uiout, ((void*)0), "loop_break");
   ui_out_text (uiout, "\n");
   list = list->next;
   continue;
 }


      if (list->control_type == while_control)
 {
   ui_out_field_fmt (uiout, ((void*)0), "while %s", list->line);
   ui_out_text (uiout, "\n");
   print_command_lines (uiout, *list->body_list, depth + 1);
   if (depth)
     ui_out_spaces (uiout, 2 * depth);
   ui_out_field_string (uiout, ((void*)0), "end");
   ui_out_text (uiout, "\n");
   list = list->next;
   continue;
 }


      if (list->control_type == if_control)
 {
   ui_out_field_fmt (uiout, ((void*)0), "if %s", list->line);
   ui_out_text (uiout, "\n");

   print_command_lines (uiout, list->body_list[0], depth + 1);


   if (list->body_count == 2)
     {
       if (depth)
  ui_out_spaces (uiout, 2 * depth);
       ui_out_field_string (uiout, ((void*)0), "else");
       ui_out_text (uiout, "\n");
       print_command_lines (uiout, list->body_list[1], depth + 1);
     }

   if (depth)
     ui_out_spaces (uiout, 2 * depth);
   ui_out_field_string (uiout, ((void*)0), "end");
   ui_out_text (uiout, "\n");
   list = list->next;
   continue;
 }


      list = list->next;
    }
}
