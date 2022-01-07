
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum command_control_type { ____Placeholder_command_control_type } command_control_type ;


 struct command_line* build_command_line (int,char*) ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ invalid_control ;
 struct cleanup* make_cleanup_free_command_lines (struct command_line**) ;
 scalar_t__ recurse_read_control_structure (struct command_line*) ;
 int warning (char*) ;

__attribute__((used)) static struct command_line *
get_command_line (enum command_control_type type, char *arg)
{
  struct command_line *cmd;
  struct cleanup *old_chain = ((void*)0);


  cmd = build_command_line (type, arg);

  old_chain = make_cleanup_free_command_lines (&cmd);


  if (recurse_read_control_structure (cmd) == invalid_control)
    {
      warning ("error reading in control structure\n");
      do_cleanups (old_chain);
      return ((void*)0);
    }

  discard_cleanups (old_chain);
  return cmd;
}
