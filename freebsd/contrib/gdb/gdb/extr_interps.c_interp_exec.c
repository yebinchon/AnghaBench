
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interp {int data; TYPE_1__* procs; } ;
struct TYPE_2__ {int (* exec_proc ) (int ,char const*) ;} ;


 int stub1 (int ,char const*) ;

int
interp_exec (struct interp *interp, const char *command_str)
{
  if (interp->procs->exec_proc != ((void*)0))
    {
      return interp->procs->exec_proc (interp->data, command_str);
    }
  return 0;
}
