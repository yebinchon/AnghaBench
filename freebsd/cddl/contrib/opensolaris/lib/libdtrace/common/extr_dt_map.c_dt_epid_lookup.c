
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
struct TYPE_4__ {size_t dt_maxprobe; int ** dt_pdesc; int ** dt_edesc; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dtrace_eprobedesc_t ;
typedef size_t dtrace_epid_t ;


 int assert (int) ;
 int dt_epid_add (TYPE_1__*,size_t) ;

int
dt_epid_lookup(dtrace_hdl_t *dtp, dtrace_epid_t epid,
    dtrace_eprobedesc_t **epdp, dtrace_probedesc_t **pdp)
{
 int rval;

 if (epid >= dtp->dt_maxprobe || dtp->dt_pdesc[epid] == ((void*)0)) {
  if ((rval = dt_epid_add(dtp, epid)) != 0)
   return (rval);
 }

 assert(epid < dtp->dt_maxprobe);
 assert(dtp->dt_edesc[epid] != ((void*)0));
 assert(dtp->dt_pdesc[epid] != ((void*)0));
 *epdp = dtp->dt_edesc[epid];
 *pdp = dtp->dt_pdesc[epid];

 return (0);
}
