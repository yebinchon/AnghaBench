
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probeinfo_t ;
typedef int dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;


 int * dt_probe_info (int *,int const*,int *) ;

int
dtrace_probe_info(dtrace_hdl_t *dtp,
    const dtrace_probedesc_t *pdp, dtrace_probeinfo_t *pip)
{
 return (dt_probe_info(dtp, pdp, pip) != ((void*)0) ? 0 : -1);
}
