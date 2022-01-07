
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* dtpda_edesc; } ;
typedef TYPE_1__ dtrace_probedata_t ;
typedef int dtrace_hdl_t ;
struct TYPE_6__ {int dtepd_uarg; } ;
typedef TYPE_2__ dtrace_eprobedesc_t ;


 int DTRACE_CONSUME_ERROR ;
 int DTRACE_CONSUME_NEXT ;
 int DTRACE_CONSUME_THIS ;

 int dt_handle_err (int *,TYPE_1__*) ;

int
dt_handle(dtrace_hdl_t *dtp, dtrace_probedata_t *data)
{
 dtrace_eprobedesc_t *epd = data->dtpda_edesc;
 int rval;

 switch (epd->dtepd_uarg) {
 case 128:
  rval = dt_handle_err(dtp, data);
  break;

 default:
  return (DTRACE_CONSUME_THIS);
 }

 if (rval == 0)
  return (DTRACE_CONSUME_NEXT);

 return (DTRACE_CONSUME_ERROR);
}
