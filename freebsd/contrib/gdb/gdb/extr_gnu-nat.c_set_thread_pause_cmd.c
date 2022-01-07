
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int pause_sc; TYPE_1__* inf; } ;
struct TYPE_2__ {scalar_t__ pause_sc; } ;


 struct proc* cur_thread () ;
 int inf_suspend (TYPE_1__*) ;
 int parse_bool_arg (char*,char*) ;

__attribute__((used)) static void
set_thread_pause_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  int old_sc = thread->pause_sc;
  thread->pause_sc = parse_bool_arg (args, "set thread pause");
  if (old_sc == 0 && thread->pause_sc != 0 && thread->inf->pause_sc == 0)


    inf_suspend (thread->inf);
}
