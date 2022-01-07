
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef int wstop ;
struct ps_prochandle {int dummy; } ;
struct TYPE_18__ {int pr_what; int pr_why; } ;
typedef TYPE_1__ lwpstatus_t ;
struct TYPE_19__ {int * dt_procs; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_20__ {int dpr_pid; int dpr_lock; int dpr_cv; scalar_t__ dpr_tid; void* dpr_done; void* dpr_quit; struct ps_prochandle* dpr_proc; } ;
typedef TYPE_3__ dt_proc_t ;
typedef int dt_proc_hash_t ;
struct TYPE_21__ {TYPE_3__* dpcd_proc; TYPE_2__* dpcd_hdl; } ;
typedef TYPE_4__ dt_proc_control_data_t ;
struct TYPE_17__ {int pr_flags; TYPE_1__ pr_lwp; } ;


 void* B_FALSE ;
 void* B_TRUE ;
 int DT_PROC_STOP_CREATE ;
 int DT_PROC_STOP_GRAB ;
 scalar_t__ EINTR ;
 int FLTBPT ;
 int FLTTRACE ;
 int IS_SYS_EXEC (int ) ;
 int IS_SYS_FORK (int ) ;
 int PCNULL ;
 long PCWSTOP ;
 int PR_ASYNC ;
 int PR_BPTADJ ;
 int PR_FAULTED ;
 int PR_FORK ;
 int PR_KLC ;
 int PR_REQUESTED ;
 int PR_SYSENTRY ;
 int PR_SYSEXIT ;



 int PTHREAD_CANCEL_DISABLE ;
 int Pctlfd (struct ps_prochandle*) ;
 int Pfault (struct ps_prochandle*,int ,void*) ;
 int Preopen (struct ps_prochandle*) ;
 int Psetflags (struct ps_prochandle*,int ) ;
 int Psetrun (struct ps_prochandle*,int ,int ) ;
 int const Pstate (struct ps_prochandle*) ;
 TYPE_16__* Pstatus (struct ps_prochandle*) ;
 int Pstopstatus (struct ps_prochandle*,int ,int ) ;
 int Psync (struct ps_prochandle*) ;
 int Psysentry (struct ps_prochandle*,int ,void*) ;
 int Psysexit (struct ps_prochandle*,int ,void*) ;
 int Punsetflags (struct ps_prochandle*,int ) ;
 int SYS_execve ;
 int SYS_forksys ;
 int SYS_vfork ;
 int dt_dprintf (char*,int,...) ;
 int dt_proc_attach (TYPE_3__*,void*) ;
 int dt_proc_bpdestroy (TYPE_3__*,void*) ;
 int dt_proc_bpdisable (TYPE_3__*) ;
 int dt_proc_bpenable (TYPE_3__*) ;
 int dt_proc_bpmatch (TYPE_2__*,TYPE_3__*) ;
 int dt_proc_notify (TYPE_2__*,int *,TYPE_3__*,int *) ;
 int dt_proc_stop (TYPE_3__*,int ) ;
 int dt_proc_waitrun (TYPE_3__*) ;
 scalar_t__ errno ;
 int proc_getflags (struct ps_prochandle*) ;
 TYPE_1__* proc_getlwpstatus (struct ps_prochandle*) ;
 int proc_wstatus (struct ps_prochandle*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_setcancelstate (int ,int *) ;
 int strerror (scalar_t__) ;
 int write (int,long const*,int) ;

__attribute__((used)) static void *
dt_proc_control(void *arg)
{
 dt_proc_control_data_t *datap = arg;
 dtrace_hdl_t *dtp = datap->dpcd_hdl;
 dt_proc_t *dpr = datap->dpcd_proc;
 dt_proc_hash_t *dph = dtp->dt_procs;
 struct ps_prochandle *P = dpr->dpr_proc;
 int pid = dpr->dpr_pid;






 int notify = B_FALSE;







 (void) pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, ((void*)0));






 (void) pthread_mutex_lock(&dpr->dpr_lock);
 dt_proc_attach(dpr, B_FALSE);
 if (proc_getflags(P) & PR_KLC)

  dt_proc_stop(dpr, DT_PROC_STOP_CREATE);
 else
  dt_proc_stop(dpr, DT_PROC_STOP_GRAB);

 if (Psetrun(P, 0, 0) == -1) {
  dt_dprintf("pid %d: failed to set running: %s\n",
      (int)dpr->dpr_pid, strerror(errno));
 }

 (void) pthread_mutex_unlock(&dpr->dpr_lock);
 while (!dpr->dpr_quit) {
  const lwpstatus_t *psp;






  proc_wstatus(P);
  if (errno == EINTR)
   continue;


  (void) pthread_mutex_lock(&dpr->dpr_lock);
  switch (Pstate(P)) {
  case 129:



   psp = proc_getlwpstatus(P);


   dt_dprintf("pid %d: proc stopped showing %d/%d\n",
       pid, psp->pr_why, psp->pr_what);
   if (psp->pr_why == PR_REQUESTED) {
    dt_proc_waitrun(dpr);
    (void) pthread_mutex_unlock(&dpr->dpr_lock);
    continue;
   }
   if (psp->pr_why == PR_FAULTED && psp->pr_what == FLTBPT)
    dt_proc_bpmatch(dtp, dpr);
   else if (psp->pr_why == PR_SYSENTRY &&
       IS_SYS_FORK(psp->pr_what))
    dt_proc_bpdisable(dpr);
   else if (psp->pr_why == PR_SYSEXIT &&
       IS_SYS_FORK(psp->pr_what))
    dt_proc_bpenable(dpr);
   else if (psp->pr_why == PR_SYSEXIT &&
       IS_SYS_EXEC(psp->pr_what))
    dt_proc_attach(dpr, B_TRUE);
   break;

  case 130:





   dt_dprintf("pid %d: proc lost: %s\n",
       pid, strerror(errno));

   dpr->dpr_quit = B_TRUE;
   notify = B_TRUE;
   break;

  case 128:
   dt_dprintf("pid %d: proc died\n", pid);
   dpr->dpr_quit = B_TRUE;
   notify = B_TRUE;
   break;
  }

  if (Pstate(P) != 128 && Psetrun(P, 0, 0) == -1) {
   dt_dprintf("pid %d: failed to set running: %s\n",
       (int)dpr->dpr_pid, strerror(errno));
  }

  (void) pthread_mutex_unlock(&dpr->dpr_lock);
 }





 if (notify)
  dt_proc_notify(dtp, dph, dpr, ((void*)0));






 (void) pthread_mutex_lock(&dpr->dpr_lock);

 dt_proc_bpdestroy(dpr, B_TRUE);
 dpr->dpr_done = B_TRUE;
 dpr->dpr_tid = 0;

 (void) pthread_cond_broadcast(&dpr->dpr_cv);
 (void) pthread_mutex_unlock(&dpr->dpr_lock);

 return (((void*)0));
}
