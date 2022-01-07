
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {int dpr_stop; int dpr_lock; int dpr_cv; } ;
typedef TYPE_1__ dt_proc_t ;


 int B_FALSE ;
 int DT_PROC_STOP_IDLE ;
 TYPE_1__* dt_proc_lookup (int *,struct ps_prochandle*,int ) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
dt_proc_continue(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
 dt_proc_t *dpr = dt_proc_lookup(dtp, P, B_FALSE);

 (void) pthread_mutex_lock(&dpr->dpr_lock);

 if (dpr->dpr_stop & DT_PROC_STOP_IDLE) {
  dpr->dpr_stop &= ~DT_PROC_STOP_IDLE;
  (void) pthread_cond_broadcast(&dpr->dpr_cv);
 }

 (void) pthread_mutex_unlock(&dpr->dpr_lock);
}
