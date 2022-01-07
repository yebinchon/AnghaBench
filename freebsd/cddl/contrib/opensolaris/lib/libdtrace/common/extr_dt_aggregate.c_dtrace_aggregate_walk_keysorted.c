
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;
typedef int dtrace_aggregate_f ;


 int dt_aggregate_varkeycmp ;
 int dt_aggregate_walk_sorted (int *,int *,void*,int ) ;

int
dtrace_aggregate_walk_keysorted(dtrace_hdl_t *dtp,
    dtrace_aggregate_f *func, void *arg)
{
 return (dt_aggregate_walk_sorted(dtp, func,
     arg, dt_aggregate_varkeycmp));
}
