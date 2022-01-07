
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {int dpr_lock; } ;
typedef TYPE_1__ dt_proc_t ;


 int B_FALSE ;
 int assert (int) ;
 TYPE_1__* dt_proc_lookup (int *,struct ps_prochandle*,int ) ;
 int pthread_mutex_unlock (int *) ;

void
dt_proc_unlock(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
 dt_proc_t *dpr = dt_proc_lookup(dtp, P, B_FALSE);
 int err = pthread_mutex_unlock(&dpr->dpr_lock);
 assert(err == 0);
}
