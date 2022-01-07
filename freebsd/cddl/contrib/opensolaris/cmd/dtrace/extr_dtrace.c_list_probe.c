
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_probeinfo_t ;
struct TYPE_4__ {int dtpd_name; int dtpd_func; int dtpd_mod; int dtpd_provider; int dtpd_id; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;


 scalar_t__ dtrace_probe_info (int *,TYPE_1__ const*,int *) ;
 scalar_t__ g_intr ;
 scalar_t__ g_verbose ;
 int oprintf (char*,int ,int ,int ,int ,int ) ;
 int print_probe_info (int *) ;

__attribute__((used)) static int
list_probe(dtrace_hdl_t *dtp, const dtrace_probedesc_t *pdp, void *arg)
{
 dtrace_probeinfo_t p;

 oprintf("%5d %10s %17s %33s %s\n", pdp->dtpd_id,
     pdp->dtpd_provider, pdp->dtpd_mod, pdp->dtpd_func, pdp->dtpd_name);

 if (g_verbose && dtrace_probe_info(dtp, pdp, &p) == 0)
  print_probe_info(&p);

 if (g_intr != 0)
  return (1);

 return (0);
}
