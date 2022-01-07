
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dbp_active; int dbp_instr; int dbp_addr; } ;
struct TYPE_6__ {int dpr_proc; TYPE_2__ dpr_bps; int dpr_lock; } ;
typedef TYPE_1__ dt_proc_t ;
typedef TYPE_2__ dt_bkpt_t ;


 scalar_t__ B_FALSE ;
 int DT_MUTEX_HELD (int *) ;
 scalar_t__ Pdelbkpt (int ,int ,int ) ;
 int assert (int ) ;
 int dt_dprintf (char*) ;
 TYPE_2__* dt_list_next (TYPE_2__*) ;

__attribute__((used)) static void
dt_proc_bpdisable(dt_proc_t *dpr)
{
 dt_bkpt_t *dbp;

 assert(DT_MUTEX_HELD(&dpr->dpr_lock));

 for (dbp = dt_list_next(&dpr->dpr_bps);
     dbp != ((void*)0); dbp = dt_list_next(dbp)) {
  if (dbp->dbp_active && Pdelbkpt(dpr->dpr_proc,
      dbp->dbp_addr, dbp->dbp_instr) == 0)
   dbp->dbp_active = B_FALSE;
 }

 dt_dprintf("breakpoints disabled\n");
}
