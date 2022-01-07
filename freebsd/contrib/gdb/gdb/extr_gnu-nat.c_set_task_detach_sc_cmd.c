
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int detach_sc; } ;


 TYPE_1__* cur_inf () ;
 int parse_int_arg (char*,char*) ;

__attribute__((used)) static void
set_task_detach_sc_cmd (char *args, int from_tty)
{
  cur_inf ()->detach_sc = parse_int_arg (args, "set task detach-suspend-count");
}
