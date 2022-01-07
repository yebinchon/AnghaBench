
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dtpd_id; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
typedef scalar_t__ dtrace_id_t ;
typedef int dtrace_hdl_t ;


 int DTRACEIOC_PROBES ;
 int EDT_BADID ;
 int bzero (TYPE_1__*,int) ;
 int dt_ioctl (int *,int ,TYPE_1__*) ;
 int dt_set_errno (int *,int ) ;

int
dtrace_id2desc(dtrace_hdl_t *dtp, dtrace_id_t id, dtrace_probedesc_t *pdp)
{
 bzero(pdp, sizeof (dtrace_probedesc_t));
 pdp->dtpd_id = id;

 if (dt_ioctl(dtp, DTRACEIOC_PROBES, pdp) == -1 ||
     pdp->dtpd_id != id)
  return (dt_set_errno(dtp, EDT_BADID));

 return (0);
}
