
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int rd_err_e ;
struct TYPE_11__ {scalar_t__ pr_errno; } ;
struct TYPE_12__ {TYPE_1__ pr_lwp; } ;
typedef TYPE_2__ pstatus_t ;
struct TYPE_13__ {scalar_t__ dpr_pid; int dpr_proc; int * dpr_rtld; int dpr_lock; } ;
typedef TYPE_3__ dt_proc_t ;
typedef int dt_bkpt_f ;
struct TYPE_14__ {scalar_t__ st_value; } ;
typedef TYPE_4__ GElf_Sym ;


 int B_FALSE ;
 int B_TRUE ;
 int DT_MUTEX_HELD (int *) ;
 int LM_ID_BASE ;
 int * Prd_agent (int ) ;
 int Preset_maps (int ) ;
 TYPE_2__* Pstatus (int ) ;
 int Pupdate_maps (int ) ;
 scalar_t__ Pxlookup_by_name (int ,int ,char*,char*,TYPE_4__*,int *) ;
 int RD_DLACTIVITY ;
 int RD_OK ;
 int RD_POSTINIT ;
 int RD_PREINIT ;
 int assert (int ) ;
 int dt_dprintf (char*,int,char*) ;
 int dt_proc_bpcreate (TYPE_3__*,uintptr_t,int *,char*) ;
 int dt_proc_bpdestroy (TYPE_3__*,int ) ;
 scalar_t__ dt_proc_bpmain ;
 int dt_proc_rdwatch (TYPE_3__*,int ,char*) ;
 int errno ;
 char* rd_errstr (int ) ;
 int rd_event_enable (int *,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static void
dt_proc_attach(dt_proc_t *dpr, int exec)
{



 rd_err_e err;
 GElf_Sym sym;

 assert(DT_MUTEX_HELD(&dpr->dpr_lock));

 if (exec) {





  dt_proc_bpdestroy(dpr, B_FALSE);



 }
 if ((dpr->dpr_rtld = Prd_agent(dpr->dpr_proc)) != ((void*)0) &&
     (err = rd_event_enable(dpr->dpr_rtld, B_TRUE)) == RD_OK) {



  dt_proc_rdwatch(dpr, RD_POSTINIT, "RD_POSTINIT");



 } else {
  dt_dprintf("pid %d: failed to enable rtld events: %s\n",
      (int)dpr->dpr_pid, dpr->dpr_rtld ? rd_errstr(err) :
      "rtld_db agent initialization failed");
 }

 Pupdate_maps(dpr->dpr_proc);

 if (Pxlookup_by_name(dpr->dpr_proc, LM_ID_BASE,
     "a.out", "main", &sym, ((void*)0)) == 0) {
  (void) dt_proc_bpcreate(dpr, (uintptr_t)sym.st_value,
      (dt_bkpt_f *)dt_proc_bpmain, "a.out`main");
 } else {
  dt_dprintf("pid %d: failed to find a.out`main: %s\n",
      (int)dpr->dpr_pid, strerror(errno));
 }
}
