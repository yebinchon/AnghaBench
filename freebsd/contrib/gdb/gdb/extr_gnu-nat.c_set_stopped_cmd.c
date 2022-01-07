
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stopped; } ;


 int _parse_bool_arg (char*,char*,char*,char*) ;
 TYPE_1__* cur_inf () ;

__attribute__((used)) static void
set_stopped_cmd (char *args, int from_tty)
{
  cur_inf ()->stopped = _parse_bool_arg (args, "yes", "no", "set stopped");
}
