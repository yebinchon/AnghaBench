
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ dtrace_workstatus_t ;
typedef scalar_t__ dtrace_optval_t ;
struct TYPE_6__ {scalar_t__* dt_options; int dt_lastagg; int dt_lastswitch; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dtrace_consume_rec_f ;
typedef int dtrace_consume_probe_f ;
typedef int FILE ;


 size_t DTRACEOPT_BUFPOLICY ;
 scalar_t__ DTRACEOPT_BUFPOLICY_SWITCH ;





 scalar_t__ DTRACE_WORKSTATUS_DONE ;
 scalar_t__ DTRACE_WORKSTATUS_ERROR ;
 scalar_t__ DTRACE_WORKSTATUS_OKAY ;
 int assert (int) ;
 int dtrace_aggregate_snap (TYPE_1__*) ;
 int dtrace_consume (TYPE_1__*,int *,int *,int *,void*) ;
 int dtrace_status (TYPE_1__*) ;

dtrace_workstatus_t
dtrace_work(dtrace_hdl_t *dtp, FILE *fp,
    dtrace_consume_probe_f *pfunc, dtrace_consume_rec_f *rfunc, void *arg)
{
 int status = dtrace_status(dtp);
 dtrace_optval_t policy = dtp->dt_options[DTRACEOPT_BUFPOLICY];
 dtrace_workstatus_t rval;

 switch (status) {
 case 132:
 case 131:
 case 128:





  dtp->dt_lastswitch = 0;
  dtp->dt_lastagg = 0;
  rval = DTRACE_WORKSTATUS_DONE;
  break;

 case 130:
 case 129:
  rval = DTRACE_WORKSTATUS_OKAY;
  break;

 case -1:
  return (DTRACE_WORKSTATUS_ERROR);
 }

 if ((status == 130 || status == 129) &&
     policy != DTRACEOPT_BUFPOLICY_SWITCH) {






  assert(rval == DTRACE_WORKSTATUS_OKAY);
  return (rval);
 }

 if (dtrace_aggregate_snap(dtp) == -1)
  return (DTRACE_WORKSTATUS_ERROR);

 if (dtrace_consume(dtp, fp, pfunc, rfunc, arg) == -1)
  return (DTRACE_WORKSTATUS_ERROR);

 return (rval);
}
