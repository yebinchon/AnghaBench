
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int * dt_vopen (int,int,int*,int *,int *) ;

dtrace_hdl_t *
dtrace_open(int version, int flags, int *errp)
{
 return (dt_vopen(version, flags, errp, ((void*)0), ((void*)0)));
}
