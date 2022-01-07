
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
struct continuation_arg {TYPE_1__ data; } ;
struct cleanup {int dummy; } ;


 int do_exec_cleanups (struct cleanup*) ;

__attribute__((used)) static void
until_break_command_continuation (struct continuation_arg *arg)
{
  struct cleanup *cleanups;

  cleanups = (struct cleanup *) arg->data.pointer;
  do_exec_cleanups (cleanups);
}
