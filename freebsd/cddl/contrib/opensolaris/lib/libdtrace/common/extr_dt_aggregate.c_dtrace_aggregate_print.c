
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int pd ;
struct TYPE_14__ {int dt_errno; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int (* dtrace_aggregate_walk_f ) (TYPE_1__*,int ,TYPE_3__*) ;
struct TYPE_15__ {int dtpa_allunprint; int * dtpa_fp; TYPE_1__* dtpa_dtp; } ;
typedef TYPE_3__ dt_print_aggdata_t ;
typedef int FILE ;


 int bzero (TYPE_3__*,int) ;
 int dt_print_agg ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int dtrace_aggregate_walk_sorted (TYPE_1__*,int ,TYPE_3__*) ;
 int stub1 (TYPE_1__*,int ,TYPE_3__*) ;

int
dtrace_aggregate_print(dtrace_hdl_t *dtp, FILE *fp,
    dtrace_aggregate_walk_f *func)
{
 dt_print_aggdata_t pd;

 bzero(&pd, sizeof (pd));

 pd.dtpa_dtp = dtp;
 pd.dtpa_fp = fp;
 pd.dtpa_allunprint = 1;

 if (func == ((void*)0))
  func = dtrace_aggregate_walk_sorted;

 if ((*func)(dtp, dt_print_agg, &pd) == -1)
  return (dt_set_errno(dtp, dtp->dt_errno));

 return (0);
}
