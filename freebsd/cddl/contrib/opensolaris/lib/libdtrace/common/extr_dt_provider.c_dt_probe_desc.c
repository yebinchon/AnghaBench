
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtpd_id; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;


 scalar_t__ DTRACE_IDNONE ;
 int bcopy (TYPE_1__ const*,void*,int) ;

__attribute__((used)) static int
dt_probe_desc(dtrace_hdl_t *dtp, const dtrace_probedesc_t *pdp, void *arg)
{
 if (((dtrace_probedesc_t *)arg)->dtpd_id == DTRACE_IDNONE) {
  bcopy(pdp, arg, sizeof (dtrace_probedesc_t));
  return (0);
 }

 return (1);
}
