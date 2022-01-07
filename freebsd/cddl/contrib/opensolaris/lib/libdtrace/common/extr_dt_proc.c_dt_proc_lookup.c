
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int pid_t ;
struct TYPE_7__ {TYPE_3__* dt_procs; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_8__ {int dpr_pid; struct TYPE_8__* dpr_hash; struct ps_prochandle* dpr_proc; } ;
typedef TYPE_2__ dt_proc_t ;
struct TYPE_9__ {int dph_hashlen; TYPE_2__** dph_hash; } ;
typedef TYPE_3__ dt_proc_hash_t ;
struct TYPE_10__ {int pr_pid; } ;


 TYPE_6__* Pstatus (struct ps_prochandle*) ;
 int assert (int) ;
 int proc_getpid (struct ps_prochandle*) ;

dt_proc_t *
dt_proc_lookup(dtrace_hdl_t *dtp, struct ps_prochandle *P, int remove)
{
 dt_proc_hash_t *dph = dtp->dt_procs;



 pid_t pid = proc_getpid(P);

 dt_proc_t *dpr, **dpp = &dph->dph_hash[pid & (dph->dph_hashlen - 1)];

 for (dpr = *dpp; dpr != ((void*)0); dpr = dpr->dpr_hash) {
  if (dpr->dpr_pid == pid)
   break;
  else
   dpp = &dpr->dpr_hash;
 }

 assert(dpr != ((void*)0));
 assert(dpr->dpr_proc == P);

 if (remove)
  *dpp = dpr->dpr_hash;

 return (dpr);
}
