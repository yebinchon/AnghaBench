
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interp {TYPE_1__* procs; } ;
struct TYPE_2__ {int * exec_proc; } ;



int
interp_exec_p (struct interp *interp)
{
  return interp->procs->exec_proc != ((void*)0);
}
