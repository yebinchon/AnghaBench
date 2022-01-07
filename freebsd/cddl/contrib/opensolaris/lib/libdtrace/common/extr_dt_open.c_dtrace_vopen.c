
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_vector_t ;
typedef int dtrace_hdl_t ;


 int * dt_vopen (int,int,int*,int const*,void*) ;

dtrace_hdl_t *
dtrace_vopen(int version, int flags, int *errp,
    const dtrace_vector_t *vector, void *arg)
{
 return (dt_vopen(version, flags, errp, vector, arg));
}
