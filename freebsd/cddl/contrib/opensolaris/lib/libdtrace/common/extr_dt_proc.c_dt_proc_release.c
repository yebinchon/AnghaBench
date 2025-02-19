
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct TYPE_8__ {TYPE_3__* dt_procs; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {scalar_t__ dpr_refs; int dpr_cacheable; } ;
typedef TYPE_2__ dt_proc_t ;
struct TYPE_10__ {scalar_t__ dph_lrucnt; scalar_t__ dph_lrulim; } ;
typedef TYPE_3__ dt_proc_hash_t ;


 int B_FALSE ;
 int assert (int) ;
 int dt_proc_destroy (TYPE_1__*,struct ps_prochandle*) ;
 TYPE_2__* dt_proc_lookup (TYPE_1__*,struct ps_prochandle*,int ) ;

void
dt_proc_release(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
 dt_proc_t *dpr = dt_proc_lookup(dtp, P, B_FALSE);
 dt_proc_hash_t *dph = dtp->dt_procs;

 assert(dpr != ((void*)0));
 assert(dpr->dpr_refs != 0);

 if (--dpr->dpr_refs == 0 &&
     (!dpr->dpr_cacheable || dph->dph_lrucnt > dph->dph_lrulim))
  dt_proc_destroy(dtp, P);
}
