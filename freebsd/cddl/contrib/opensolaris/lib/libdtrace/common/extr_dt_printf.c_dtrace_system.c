
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_recdesc_t ;
typedef int dtrace_probedata_t ;
struct TYPE_5__ {int dt_sprintf_buf; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int FILE ;


 int dt_set_errno (TYPE_1__*,int ) ;
 int dtrace_sprintf (TYPE_1__*,int *,void*,int const*,int ,void const*,size_t) ;
 int errno ;
 int fflush (int *) ;
 int system (int ) ;

int
dtrace_system(dtrace_hdl_t *dtp, FILE *fp, void *fmtdata,
    const dtrace_probedata_t *data, const dtrace_recdesc_t *recp,
    uint_t nrecs, const void *buf, size_t len)
{
 int rval = dtrace_sprintf(dtp, fp, fmtdata, recp, nrecs, buf, len);

 if (rval == -1)
  return (rval);






 (void) fflush(fp);

 if (system(dtp->dt_sprintf_buf) == -1)
  return (dt_set_errno(dtp, errno));

 return (rval);
}
