
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {scalar_t__ control_type; struct command_line* next; } ;
struct cleanup {int dummy; } ;
typedef enum misc_command_type { ____Placeholder_misc_command_type } misc_command_type ;
typedef enum command_control_type { ____Placeholder_command_control_type } command_control_type ;


 int END_MESSAGE ;
 scalar_t__ control_level ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 int dont_repeat () ;
 int end_command ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ if_control ;
 scalar_t__ input_from_terminal_p () ;
 int invalid_control ;
 struct cleanup* make_cleanup_free_command_lines (struct command_line**) ;
 int nop_command ;
 int ok_command ;
 int printf_unfiltered (char*,char*,int ) ;
 int read_next_line (struct command_line**) ;
 int readline_begin_hook (char*,char*,int ) ;
 int readline_end_hook () ;
 int recurse_read_control_structure (struct command_line*) ;
 int simple_control ;
 int stub1 (char*,char*,int ) ;
 int stub2 () ;
 scalar_t__ while_control ;

struct command_line *
read_command_lines (char *prompt_arg, int from_tty)
{
  struct command_line *head, *tail, *next;
  struct cleanup *old_chain;
  enum command_control_type ret;
  enum misc_command_type val;

  control_level = 0;
  if (readline_begin_hook)
    {

      (*readline_begin_hook) ("%s  %s\n", prompt_arg, END_MESSAGE);
    }
  else if (from_tty && input_from_terminal_p ())
    {
      printf_unfiltered ("%s\n%s\n", prompt_arg, END_MESSAGE);
      gdb_flush (gdb_stdout);
    }

  head = tail = ((void*)0);
  old_chain = ((void*)0);

  while (1)
    {
      val = read_next_line (&next);


      if (val == nop_command)
 continue;

      if (val == end_command)
 {
   ret = simple_control;
   break;
 }

      if (val != ok_command)
 {
   ret = invalid_control;
   break;
 }

      if (next->control_type == while_control
   || next->control_type == if_control)
 {
   control_level++;
   ret = recurse_read_control_structure (next);
   control_level--;

   if (ret == invalid_control)
     break;
 }

      if (tail)
 {
   tail->next = next;
 }
      else
 {
   head = next;
   old_chain = make_cleanup_free_command_lines (&head);
 }
      tail = next;
    }

  dont_repeat ();

  if (head)
    {
      if (ret != invalid_control)
 {
   discard_cleanups (old_chain);
 }
      else
 do_cleanups (old_chain);
    }

  if (readline_end_hook)
    {
      (*readline_end_hook) ();
    }
  return (head);
}
