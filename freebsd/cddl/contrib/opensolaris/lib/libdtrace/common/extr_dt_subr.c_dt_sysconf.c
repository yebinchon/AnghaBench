
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long (* dtv_sysconf ) (int ,int) ;} ;
typedef TYPE_1__ dtrace_vector_t ;
struct TYPE_5__ {int dt_varg; TYPE_1__* dt_vector; } ;
typedef TYPE_2__ dtrace_hdl_t ;


 long stub1 (int ,int) ;
 long sysconf (int) ;

long
dt_sysconf(dtrace_hdl_t *dtp, int name)
{
 const dtrace_vector_t *v = dtp->dt_vector;

 if (v == ((void*)0))
  return (sysconf(name));

 return (v->dtv_sysconf(dtp->dt_varg, name));
}
