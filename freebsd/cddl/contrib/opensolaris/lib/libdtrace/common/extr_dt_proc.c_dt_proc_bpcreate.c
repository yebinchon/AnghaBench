
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct TYPE_7__ {int dpr_bps; int dpr_hdl; int dpr_lock; struct ps_prochandle* dpr_proc; } ;
typedef TYPE_1__ dt_proc_t ;
struct TYPE_8__ {uintptr_t dbp_addr; int dbp_active; int dbp_instr; void* dbp_data; int * dbp_func; } ;
typedef TYPE_2__ dt_bkpt_t ;
typedef int dt_bkpt_f ;


 int B_TRUE ;
 int DT_MUTEX_HELD (int *) ;
 scalar_t__ Psetbkpt (struct ps_prochandle*,uintptr_t,int *) ;
 int assert (int ) ;
 int dt_list_append (int *,TYPE_2__*) ;
 TYPE_2__* dt_zalloc (int ,int) ;

__attribute__((used)) static dt_bkpt_t *
dt_proc_bpcreate(dt_proc_t *dpr, uintptr_t addr, dt_bkpt_f *func, void *data)
{
 struct ps_prochandle *P = dpr->dpr_proc;
 dt_bkpt_t *dbp;

 assert(DT_MUTEX_HELD(&dpr->dpr_lock));

 if ((dbp = dt_zalloc(dpr->dpr_hdl, sizeof (dt_bkpt_t))) != ((void*)0)) {
  dbp->dbp_func = func;
  dbp->dbp_data = data;
  dbp->dbp_addr = addr;

  if (Psetbkpt(P, dbp->dbp_addr, &dbp->dbp_instr) == 0)
   dbp->dbp_active = B_TRUE;

  dt_list_append(&dpr->dpr_bps, dbp);
 }

 return (dbp);
}
