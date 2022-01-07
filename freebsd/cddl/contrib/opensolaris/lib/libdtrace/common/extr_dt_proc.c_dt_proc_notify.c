
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_7__ {scalar_t__ dpr_pid; } ;
typedef TYPE_1__ dt_proc_t ;
struct TYPE_8__ {char* dprn_errmsg; struct TYPE_8__* dprn_next; TYPE_1__* dprn_dpr; } ;
typedef TYPE_2__ dt_proc_notify_t ;
struct TYPE_9__ {int dph_lock; int dph_cv; TYPE_2__* dph_notify; } ;
typedef TYPE_3__ dt_proc_hash_t ;


 TYPE_2__* dt_alloc (int *,int) ;
 int dt_dprintf (char*,int,char const*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void
dt_proc_notify(dtrace_hdl_t *dtp, dt_proc_hash_t *dph, dt_proc_t *dpr,
    const char *msg)
{
 dt_proc_notify_t *dprn = dt_alloc(dtp, sizeof (dt_proc_notify_t));

 if (dprn == ((void*)0)) {
  dt_dprintf("failed to allocate notification for %d %s\n",
      (int)dpr->dpr_pid, msg);
 } else {
  dprn->dprn_dpr = dpr;
  if (msg == ((void*)0))
   dprn->dprn_errmsg[0] = '\0';
  else
   (void) strlcpy(dprn->dprn_errmsg, msg,
       sizeof (dprn->dprn_errmsg));

  (void) pthread_mutex_lock(&dph->dph_lock);

  dprn->dprn_next = dph->dph_notify;
  dph->dph_notify = dprn;

  (void) pthread_cond_broadcast(&dph->dph_cv);
  (void) pthread_mutex_unlock(&dph->dph_lock);
 }
}
