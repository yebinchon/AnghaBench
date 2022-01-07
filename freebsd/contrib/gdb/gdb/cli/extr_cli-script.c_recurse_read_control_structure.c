
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {scalar_t__ control_type; int body_count; struct command_line** body_list; struct command_line* next; } ;
typedef enum misc_command_type { ____Placeholder_misc_command_type } misc_command_type ;
typedef enum command_control_type { ____Placeholder_command_control_type } command_control_type ;


 int control_level ;
 int dont_repeat () ;
 int else_command ;
 int end_command ;
 int error (char*) ;
 scalar_t__ if_control ;
 int invalid_control ;
 int nop_command ;
 int read_next_line (struct command_line**) ;
 int realloc_body_list (struct command_line*,int) ;
 scalar_t__ simple_control ;
 scalar_t__ while_control ;

__attribute__((used)) static enum command_control_type
recurse_read_control_structure (struct command_line *current_cmd)
{
  int current_body, i;
  enum misc_command_type val;
  enum command_control_type ret;
  struct command_line **body_ptr, *child_tail, *next;

  child_tail = ((void*)0);
  current_body = 1;


  if (current_cmd->control_type == simple_control)
    {
      error ("Recursed on a simple control type\n");
      return invalid_control;
    }

  if (current_body > current_cmd->body_count)
    {
      error ("Allocated body is smaller than this command type needs\n");
      return invalid_control;
    }


  while (1)
    {
      dont_repeat ();

      next = ((void*)0);
      val = read_next_line (&next);


      if (val == nop_command)
 continue;

      if (val == end_command)
 {
   if (current_cmd->control_type == while_control
       || current_cmd->control_type == if_control)
     {

       ret = simple_control;
       break;
     }
   else
     {
       ret = invalid_control;
       break;
     }
 }


      if (val == else_command)
 {
   if (current_cmd->control_type == if_control
       && current_body == 1)
     {
       realloc_body_list (current_cmd, 2);
       current_body = 2;
       child_tail = ((void*)0);
       continue;
     }
   else
     {
       ret = invalid_control;
       break;
     }
 }

      if (child_tail)
 {
   child_tail->next = next;
 }
      else
 {
   body_ptr = current_cmd->body_list;
   for (i = 1; i < current_body; i++)
     body_ptr++;

   *body_ptr = next;

 }

      child_tail = next;



      if (next->control_type == while_control
   || next->control_type == if_control)
 {
   control_level++;
   ret = recurse_read_control_structure (next);
   control_level--;

   if (ret != simple_control)
     break;
 }
    }

  dont_repeat ();

  return ret;
}
