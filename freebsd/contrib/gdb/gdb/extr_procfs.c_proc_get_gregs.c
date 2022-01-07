
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int gregs; } ;
struct TYPE_9__ {TYPE_1__ uc_mcontext; } ;
struct TYPE_10__ {int pr_reg; TYPE_2__ pr_context; } ;
struct TYPE_11__ {int pr_reg; TYPE_3__ pr_lwp; } ;
struct TYPE_12__ {TYPE_4__ prstatus; int gregs_valid; int status_valid; } ;
typedef TYPE_5__ procinfo ;
typedef int gdb_gregset_t ;


 int proc_get_status (TYPE_5__*) ;

gdb_gregset_t *
proc_get_gregs (procinfo *pi)
{
  if (!pi->status_valid || !pi->gregs_valid)
    if (!proc_get_status (pi))
      return ((void*)0);
  return &pi->prstatus.pr_reg;

}
