
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int dbp_instr; int dbp_addr; scalar_t__ dbp_active; } ;
struct TYPE_9__ {int dpr_hdl; TYPE_2__ dpr_bps; int dpr_proc; int dpr_lock; } ;
typedef TYPE_1__ dt_proc_t ;
typedef TYPE_2__ dt_bkpt_t ;


 int DT_MUTEX_HELD (int *) ;
 int PS_LOST ;
 int PS_UNDEAD ;
 int Pdelbkpt (int ,int ,int ) ;
 int Pstate (int ) ;
 int assert (int ) ;
 int dt_free (int ,TYPE_2__*) ;
 int dt_list_delete (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* dt_list_next (TYPE_2__*) ;

__attribute__((used)) static void
dt_proc_bpdestroy(dt_proc_t *dpr, int delbkpts)
{
 int state = Pstate(dpr->dpr_proc);
 dt_bkpt_t *dbp, *nbp;

 assert(DT_MUTEX_HELD(&dpr->dpr_lock));

 for (dbp = dt_list_next(&dpr->dpr_bps); dbp != ((void*)0); dbp = nbp) {
  if (delbkpts && dbp->dbp_active &&
      state != PS_LOST && state != PS_UNDEAD) {
   (void) Pdelbkpt(dpr->dpr_proc,
       dbp->dbp_addr, dbp->dbp_instr);
  }
  nbp = dt_list_next(dbp);
  dt_list_delete(&dpr->dpr_bps, dbp);
  dt_free(dpr->dpr_hdl, dbp);
 }
}
