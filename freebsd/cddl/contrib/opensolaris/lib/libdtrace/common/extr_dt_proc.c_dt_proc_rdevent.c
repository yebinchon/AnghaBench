
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int state; } ;
struct TYPE_14__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ rd_event_msg_t ;
typedef int rd_err_e ;
struct TYPE_15__ {int dt_procs; } ;
typedef TYPE_3__ dtrace_hdl_t ;
struct TYPE_16__ {int dpr_proc; int dpr_errmsg; scalar_t__ dpr_pid; int dpr_rtld; } ;
typedef TYPE_4__ dt_proc_t ;


 int DT_PROC_STOP_POSTINIT ;
 int DT_PROC_STOP_PREINIT ;
 int Pupdate_syms (int ) ;
 int RD_CONSISTENT ;

 int RD_OK ;


 int dt_dprintf (char*,int,char const*,int,...) ;
 int dt_pid_create_probes_module (TYPE_3__*,TYPE_4__*) ;
 int dt_proc_notify (TYPE_3__*,int ,TYPE_4__*,int ) ;
 int dt_proc_stop (TYPE_4__*,int ) ;
 int rd_errstr (int ) ;
 int rd_event_getmsg (int ,TYPE_2__*) ;

__attribute__((used)) static void
dt_proc_rdevent(dtrace_hdl_t *dtp, dt_proc_t *dpr, const char *evname)
{
 rd_event_msg_t rdm;
 rd_err_e err;

 if ((err = rd_event_getmsg(dpr->dpr_rtld, &rdm)) != RD_OK) {
  dt_dprintf("pid %d: failed to get %s event message: %s\n",
      (int)dpr->dpr_pid, evname, rd_errstr(err));
  return;
 }

 dt_dprintf("pid %d: rtld event %s type=%d state %d\n",
     (int)dpr->dpr_pid, evname, rdm.type, rdm.u.state);

 switch (rdm.type) {
 case 130:
  if (rdm.u.state != RD_CONSISTENT)
   break;

  Pupdate_syms(dpr->dpr_proc);
  if (dt_pid_create_probes_module(dtp, dpr) != 0)
   dt_proc_notify(dtp, dtp->dt_procs, dpr,
       dpr->dpr_errmsg);

  break;
 case 128:
  Pupdate_syms(dpr->dpr_proc);
  dt_proc_stop(dpr, DT_PROC_STOP_PREINIT);
  break;
 case 129:
  Pupdate_syms(dpr->dpr_proc);
  dt_proc_stop(dpr, DT_PROC_STOP_POSTINIT);
  break;
 }
}
