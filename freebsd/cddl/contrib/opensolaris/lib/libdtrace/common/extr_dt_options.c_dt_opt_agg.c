
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {uintptr_t dtat_flags; } ;
struct TYPE_5__ {TYPE_2__ dt_aggregate; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_aggregate_t ;


 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;

__attribute__((used)) static int
dt_opt_agg(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dt_aggregate_t *agp = &dtp->dt_aggregate;

 if (arg != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 agp->dtat_flags |= option;
 return (0);
}
