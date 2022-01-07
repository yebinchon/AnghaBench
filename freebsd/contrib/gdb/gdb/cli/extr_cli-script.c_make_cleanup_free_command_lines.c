
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_free_command_lines_cleanup ;
 struct cleanup* make_cleanup (int ,struct command_line**) ;

struct cleanup *
make_cleanup_free_command_lines (struct command_line **arg)
{
  return make_cleanup (do_free_command_lines_cleanup, arg);
}
