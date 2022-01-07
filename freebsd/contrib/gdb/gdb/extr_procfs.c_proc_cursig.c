
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long pr_cursig; } ;
struct TYPE_4__ {long pr_cursig; TYPE_1__ pr_lwp; } ;
struct procinfo {TYPE_2__ prstatus; int status_valid; } ;


 int proc_get_status (struct procinfo*) ;

long
proc_cursig (struct procinfo *pi)
{
  if (!pi->status_valid)
    if (!proc_get_status (pi))
      return 0;




  return pi->prstatus.pr_cursig;

}
