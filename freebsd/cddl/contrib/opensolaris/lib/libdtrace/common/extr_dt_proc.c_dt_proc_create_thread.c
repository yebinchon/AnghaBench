
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint_t ;
typedef int sigset_t ;
typedef int pthread_attr_t ;
struct TYPE_8__ {int pr_wstat; } ;
typedef TYPE_1__ psinfo_t ;
typedef int dtrace_hdl_t ;
struct TYPE_9__ {int dpr_stop; int dpr_pid; int dpr_lock; int dpr_hdl; int dpr_proc; scalar_t__ dpr_done; int dpr_cv; int dpr_tid; } ;
typedef TYPE_2__ dt_proc_t ;
struct TYPE_10__ {TYPE_2__* dpcd_proc; int * dpcd_hdl; } ;
typedef TYPE_3__ dt_proc_control_data_t ;


 int DT_PROC_STOP_IDLE ;
 int ESRCH ;
 scalar_t__ PS_LOST ;
 int PTHREAD_CREATE_DETACHED ;
 TYPE_1__* Ppsinfo (int ) ;
 int SIGABRT ;
 int SIGCANCEL ;
 int SIGUSR1 ;
 int SIG_SETMASK ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int dt_proc_control ;
 int dt_proc_error (int ,TYPE_2__*,char*,int,...) ;
 int proc_getpid (int ) ;
 int proc_getwstat (int ) ;
 scalar_t__ proc_state (int ) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int strerror (int) ;

__attribute__((used)) static int
dt_proc_create_thread(dtrace_hdl_t *dtp, dt_proc_t *dpr, uint_t stop)
{
 dt_proc_control_data_t data;
 sigset_t nset, oset;
 pthread_attr_t a;
 int err;

 (void) pthread_mutex_lock(&dpr->dpr_lock);
 dpr->dpr_stop |= stop;

 (void) pthread_attr_init(&a);
 (void) pthread_attr_setdetachstate(&a, PTHREAD_CREATE_DETACHED);

 (void) sigfillset(&nset);
 (void) sigdelset(&nset, SIGABRT);



 (void) sigdelset(&nset, SIGUSR1);


 data.dpcd_hdl = dtp;
 data.dpcd_proc = dpr;

 (void) pthread_sigmask(SIG_SETMASK, &nset, &oset);
 err = pthread_create(&dpr->dpr_tid, &a, dt_proc_control, &data);
 (void) pthread_sigmask(SIG_SETMASK, &oset, ((void*)0));
 if (err == 0) {
  while (!dpr->dpr_done && !(dpr->dpr_stop & DT_PROC_STOP_IDLE))
   (void) pthread_cond_wait(&dpr->dpr_cv, &dpr->dpr_lock);







  if (dpr->dpr_done) {





   int stat = proc_getwstat(dpr->dpr_proc);
   int pid = proc_getpid(dpr->dpr_proc);

   if (proc_state(dpr->dpr_proc) == PS_LOST) {
    (void) dt_proc_error(dpr->dpr_hdl, dpr,
        "failed to control pid %d: process exec'd "
        "set-id or unobservable program\n", pid);
   } else if (WIFSIGNALED(stat)) {
    (void) dt_proc_error(dpr->dpr_hdl, dpr,
        "failed to control pid %d: process died "
        "from signal %d\n", pid, WTERMSIG(stat));
   } else {
    (void) dt_proc_error(dpr->dpr_hdl, dpr,
        "failed to control pid %d: process exited "
        "with status %d\n", pid, WEXITSTATUS(stat));
   }

   err = ESRCH;
  }
 } else {
  (void) dt_proc_error(dpr->dpr_hdl, dpr,
      "failed to create control thread for process-id %d: %s\n",
      (int)dpr->dpr_pid, strerror(err));
 }

 if (err == 0)
  (void) pthread_mutex_unlock(&dpr->dpr_lock);
 (void) pthread_attr_destroy(&a);

 return (err);
}
