
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int hook_in; scalar_t__ hook_post; } ;
struct cleanup {int dummy; } ;


 int clear_hook_in_cleanup ;
 int do_cleanups (struct cleanup*) ;
 int execute_user_command (scalar_t__,char*) ;
 struct cleanup* make_cleanup (int ,struct cmd_list_element*) ;

void
execute_cmd_post_hook (struct cmd_list_element *c)
{
  if ((c->hook_post) && (!c->hook_in))
    {
      struct cleanup *cleanups = make_cleanup (clear_hook_in_cleanup, c);
      c->hook_in = 1;
      execute_user_command (c->hook_post, (char *) 0);
      do_cleanups (cleanups);
    }
}
