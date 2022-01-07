
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 scalar_t__ cmd_type (struct cmd_list_element*) ;
 int error (char*,int ) ;
 int schedlock_off ;
 int scheduler_mode ;
 scalar_t__ set_cmd ;
 int target_can_lock_scheduler ;
 int target_shortname ;

__attribute__((used)) static void
set_schedlock_func (char *args, int from_tty, struct cmd_list_element *c)
{
  if (cmd_type (c) == set_cmd)
    if (!target_can_lock_scheduler)
      {
 scheduler_mode = schedlock_off;
 error ("Target '%s' cannot support this command.", target_shortname);
      }
}
