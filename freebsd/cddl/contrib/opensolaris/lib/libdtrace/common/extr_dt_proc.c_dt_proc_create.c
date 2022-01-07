
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct ps_prochandle {int dummy; } ;
typedef int proc_child_func ;
struct TYPE_14__ {int dt_prcmode; int dt_proc_env; TYPE_3__* dt_procs; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_15__ {int dpr_pid; struct ps_prochandle* dpr_proc; int dpr_refs; struct TYPE_15__* dpr_hash; TYPE_1__* dpr_hdl; int dpr_cv; int dpr_lock; } ;
typedef TYPE_2__ dt_proc_t ;
struct TYPE_16__ {int dph_hashlen; int dph_lrulist; TYPE_2__** dph_hash; } ;
typedef TYPE_3__ dt_proc_hash_t ;
struct TYPE_13__ {int pr_pid; } ;


 int PR_KLC ;
 int PR_RLC ;
 int Pcreate_error (int) ;
 int Psetflags (struct ps_prochandle*,int ) ;
 TYPE_12__* Pstatus (struct ps_prochandle*) ;
 int Punsetflags (struct ps_prochandle*,int ) ;
 struct ps_prochandle* Pxcreate (char const*,char* const*,int ,int*,int *,int ) ;
 int dt_dprintf (char*,int) ;
 int dt_list_prepend (int *,TYPE_2__*) ;
 scalar_t__ dt_proc_create_thread (TYPE_1__*,TYPE_2__*,int ) ;
 struct ps_prochandle* dt_proc_error (TYPE_1__*,TYPE_2__*,char*,char const*,int ) ;
 TYPE_2__* dt_zalloc (TYPE_1__*,int) ;
 int proc_create (char const*,char* const*,int ,int *,void*,struct ps_prochandle**) ;
 int proc_getpid (struct ps_prochandle*) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

struct ps_prochandle *
dt_proc_create(dtrace_hdl_t *dtp, const char *file, char *const *argv,
    proc_child_func *pcf, void *child_arg)
{
 dt_proc_hash_t *dph = dtp->dt_procs;
 dt_proc_t *dpr;
 int err;

 if ((dpr = dt_zalloc(dtp, sizeof (dt_proc_t))) == ((void*)0))
  return (((void*)0));

 (void) pthread_mutex_init(&dpr->dpr_lock, ((void*)0));
 (void) pthread_cond_init(&dpr->dpr_cv, ((void*)0));
 if ((err = proc_create(file, argv, dtp->dt_proc_env, pcf, child_arg,
     &dpr->dpr_proc)) != 0) {
  return (dt_proc_error(dtp, dpr,
      "failed to execute %s: %s\n", file, Pcreate_error(err)));
 }


 dpr->dpr_hdl = dtp;



 dpr->dpr_pid = proc_getpid(dpr->dpr_proc);


 (void) Punsetflags(dpr->dpr_proc, PR_RLC);
 (void) Psetflags(dpr->dpr_proc, PR_KLC);

 if (dt_proc_create_thread(dtp, dpr, dtp->dt_prcmode) != 0)
  return (((void*)0));

 dpr->dpr_hash = dph->dph_hash[dpr->dpr_pid & (dph->dph_hashlen - 1)];
 dph->dph_hash[dpr->dpr_pid & (dph->dph_hashlen - 1)] = dpr;
 dt_list_prepend(&dph->dph_lrulist, dpr);

 dt_dprintf("created pid %d\n", (int)dpr->dpr_pid);
 dpr->dpr_refs++;

 return (dpr->dpr_proc);
}
