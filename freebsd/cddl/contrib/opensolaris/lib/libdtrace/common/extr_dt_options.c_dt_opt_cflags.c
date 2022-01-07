
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {uintptr_t dt_cflags; TYPE_1__* dt_pcb; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_5__ {uintptr_t pcb_cflags; } ;


 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_2__*,int ) ;

__attribute__((used)) static int
dt_opt_cflags(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dtp->dt_pcb != ((void*)0))
  dtp->dt_pcb->pcb_cflags |= option;
 else
  dtp->dt_cflags |= option;

 return (0);
}
