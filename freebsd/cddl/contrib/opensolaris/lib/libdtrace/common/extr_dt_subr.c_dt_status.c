
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int processorid_t ;
typedef int maxid ;
struct TYPE_4__ {int (* dtv_status ) (int ,int) ;} ;
typedef TYPE_1__ dtrace_vector_t ;
struct TYPE_5__ {int dt_varg; TYPE_1__* dt_vector; } ;
typedef TYPE_2__ dtrace_hdl_t ;


 int P_STATUS ;
 int p_online (int,int ) ;
 int stub1 (int ,int) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

int
dt_status(dtrace_hdl_t *dtp, processorid_t cpu)
{
 const dtrace_vector_t *v = dtp->dt_vector;

 if (v == ((void*)0)) {



  int maxid = 0;
  size_t len = sizeof(maxid);
  if (sysctlbyname("kern.smp.maxid", &maxid, &len, ((void*)0), 0) != 0)
   return (cpu == 0 ? 1 : -1);
  else
   return (cpu <= maxid ? 1 : -1);

 }

 return (v->dtv_status(dtp->dt_varg, cpu));
}
