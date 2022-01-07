
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
typedef scalar_t__ hrtime_t ;
typedef scalar_t__ dtrace_optval_t ;
struct TYPE_10__ {scalar_t__* dt_options; int dt_procarg; int (* dt_prochdlr ) (int ,char*,int ) ;TYPE_4__* dt_procs; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_11__ {char* dprn_errmsg; struct TYPE_11__* dprn_next; TYPE_1__* dprn_dpr; } ;
typedef TYPE_3__ dt_proc_notify_t ;
struct TYPE_12__ {int dph_lock; TYPE_3__* dph_notify; int dph_cv; } ;
typedef TYPE_4__ dt_proc_hash_t ;
struct TYPE_13__ {int dtslt_option; uintptr_t dtslt_offs; } ;
struct TYPE_9__ {int dpr_proc; } ;


 int CLOCK_REALTIME ;
 size_t DTRACEOPT_BUFPOLICY ;
 scalar_t__ DTRACEOPT_BUFPOLICY_SWITCH ;
 int DTRACEOPT_MAX ;
 int DTRACEOPT_STATUSRATE ;
 scalar_t__ INT64_MAX ;
 scalar_t__ NANOSEC ;
 TYPE_8__* _dtrace_sleeptab ;
 int clock_gettime (int ,struct timespec*) ;
 int dt_free (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ gethrtime () ;
 int pthread_cond_reltimedwait_np (int *,int *,struct timespec*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,char*,int ) ;

void
dtrace_sleep(dtrace_hdl_t *dtp)
{
 dt_proc_hash_t *dph = dtp->dt_procs;
 dtrace_optval_t policy = dtp->dt_options[DTRACEOPT_BUFPOLICY];
 dt_proc_notify_t *dprn;

 hrtime_t earliest = INT64_MAX;
 struct timespec tv;
 hrtime_t now;
 int i;

 for (i = 0; _dtrace_sleeptab[i].dtslt_option < DTRACEOPT_MAX; i++) {
  uintptr_t a = (uintptr_t)dtp + _dtrace_sleeptab[i].dtslt_offs;
  int opt = _dtrace_sleeptab[i].dtslt_option;
  dtrace_optval_t interval = dtp->dt_options[opt];






  if (policy != DTRACEOPT_BUFPOLICY_SWITCH &&
      _dtrace_sleeptab[i].dtslt_option != DTRACEOPT_STATUSRATE)
   continue;

  if (*((hrtime_t *)a) + interval < earliest)
   earliest = *((hrtime_t *)a) + interval;
 }

 (void) pthread_mutex_lock(&dph->dph_lock);

 now = gethrtime();

 if (earliest < now) {
  (void) pthread_mutex_unlock(&dph->dph_lock);
  return;
 }
 earliest -= now;
 clock_gettime(CLOCK_REALTIME,&tv);
 tv.tv_sec += earliest / NANOSEC;
 tv.tv_nsec += earliest % NANOSEC;
 while (tv.tv_nsec > NANOSEC) {
  tv.tv_sec += 1;
  tv.tv_nsec -= NANOSEC;
 }






 (void) pthread_cond_timedwait(&dph->dph_cv, &dph->dph_lock, &tv);


 while ((dprn = dph->dph_notify) != ((void*)0)) {
  if (dtp->dt_prochdlr != ((void*)0)) {
   char *err = dprn->dprn_errmsg;
   if (*err == '\0')
    err = ((void*)0);

   dtp->dt_prochdlr(dprn->dprn_dpr->dpr_proc, err,
       dtp->dt_procarg);
  }

  dph->dph_notify = dprn->dprn_next;
  dt_free(dtp, dprn);
 }

 (void) pthread_mutex_unlock(&dph->dph_lock);
}
