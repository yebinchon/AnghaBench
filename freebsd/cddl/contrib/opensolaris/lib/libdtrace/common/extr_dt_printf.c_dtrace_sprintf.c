
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_recdesc_t ;
typedef int dtrace_optval_t ;
struct TYPE_6__ {int * dt_sprintf_buf; int dt_sprintf_buflen; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int FILE ;


 int EDT_NOMEM ;
 int assert (int) ;
 int bzero (int *,int ) ;
 int dt_printf_format (TYPE_1__*,int *,void*,int const*,int ,void const*,size_t,int *,int ) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int dtrace_getopt (TYPE_1__*,char*,int *) ;
 int free (int *) ;
 int * malloc (int ) ;

int
dtrace_sprintf(dtrace_hdl_t *dtp, FILE *fp, void *fmtdata,
    const dtrace_recdesc_t *recp, uint_t nrecs, const void *buf, size_t len)
{
 dtrace_optval_t size;
 int rval;

 rval = dtrace_getopt(dtp, "strsize", &size);
 assert(rval == 0);
 assert(dtp->dt_sprintf_buflen == 0);

 if (dtp->dt_sprintf_buf != ((void*)0))
  free(dtp->dt_sprintf_buf);

 if ((dtp->dt_sprintf_buf = malloc(size)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 bzero(dtp->dt_sprintf_buf, size);
 dtp->dt_sprintf_buflen = size;
 rval = dt_printf_format(dtp, fp, fmtdata, recp, nrecs, buf, len,
     ((void*)0), 0);
 dtp->dt_sprintf_buflen = 0;

 if (rval == -1)
  free(dtp->dt_sprintf_buf);

 return (rval);
}
