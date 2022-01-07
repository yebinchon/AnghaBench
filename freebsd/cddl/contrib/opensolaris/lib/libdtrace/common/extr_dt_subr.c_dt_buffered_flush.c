
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int dtrace_recdesc_t ;
typedef int dtrace_probedata_t ;
struct TYPE_6__ {scalar_t__ dt_buffered_offs; char* dt_buffered_buf; scalar_t__ (* dt_bufhdlr ) (TYPE_2__*,int ) ;int dt_bufarg; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {char* dtbda_buffered; int dtbda_flags; int const* dtbda_aggdata; int const* dtbda_recdesc; int * dtbda_probe; TYPE_1__* dtbda_handle; } ;
typedef TYPE_2__ dtrace_bufdata_t ;
typedef int dtrace_aggdata_t ;


 scalar_t__ DTRACE_HANDLE_ABORT ;
 int EDT_DIRABORT ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

int
dt_buffered_flush(dtrace_hdl_t *dtp, dtrace_probedata_t *pdata,
    const dtrace_recdesc_t *rec, const dtrace_aggdata_t *agg, uint32_t flags)
{
 dtrace_bufdata_t data;

 if (dtp->dt_buffered_offs == 0)
  return (0);

 data.dtbda_handle = dtp;
 data.dtbda_buffered = dtp->dt_buffered_buf;
 data.dtbda_probe = pdata;
 data.dtbda_recdesc = rec;
 data.dtbda_aggdata = agg;
 data.dtbda_flags = flags;

 if ((*dtp->dt_bufhdlr)(&data, dtp->dt_bufarg) == DTRACE_HANDLE_ABORT)
  return (dt_set_errno(dtp, EDT_DIRABORT));

 dtp->dt_buffered_offs = 0;
 dtp->dt_buffered_buf[0] = '\0';

 return (0);
}
