
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probespec_t ;
typedef int dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;


 int dtrace_xstr2desc (int *,int ,char const*,int ,int *,int *) ;

int
dtrace_str2desc(dtrace_hdl_t *dtp, dtrace_probespec_t spec,
    const char *s, dtrace_probedesc_t *pdp)
{
 return (dtrace_xstr2desc(dtp, spec, s, 0, ((void*)0), pdp));
}
