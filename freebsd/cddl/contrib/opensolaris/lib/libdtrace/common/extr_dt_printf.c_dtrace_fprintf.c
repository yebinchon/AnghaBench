
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int dtrace_recdesc_t ;
typedef int dtrace_probedata_t ;
typedef int dtrace_hdl_t ;
typedef int FILE ;


 int dt_printf_format (int *,int *,void*,int const*,int ,void const*,size_t,int *,int ) ;

int
dtrace_fprintf(dtrace_hdl_t *dtp, FILE *fp, void *fmtdata,
    const dtrace_probedata_t *data, const dtrace_recdesc_t *recp,
    uint_t nrecs, const void *buf, size_t len)
{
 return (dt_printf_format(dtp, fp, fmtdata,
     recp, nrecs, buf, len, ((void*)0), 0));
}
