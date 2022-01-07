
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long pr_flags; } ;
struct TYPE_7__ {long pr_flags; TYPE_1__ pr_lwp; } ;
struct TYPE_8__ {TYPE_2__ prstatus; int status_valid; } ;
typedef TYPE_3__ procinfo ;


 int proc_get_status (TYPE_3__*) ;

long
proc_flags (procinfo *pi)
{
  if (!pi->status_valid)
    if (!proc_get_status (pi))
      return 0;
  return pi->prstatus.pr_flags;

}
