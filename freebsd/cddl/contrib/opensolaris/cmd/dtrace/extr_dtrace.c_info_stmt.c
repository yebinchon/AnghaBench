
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* dtsd_ecbdesc; } ;
typedef TYPE_1__ dtrace_stmtdesc_t ;
typedef int dtrace_prog_t ;
typedef int dtrace_probeinfo_t ;
struct TYPE_8__ {int dtpd_name; int dtpd_func; int dtpd_mod; int dtpd_provider; } ;
typedef TYPE_2__ dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_9__ {TYPE_2__ dted_probe; } ;
typedef TYPE_3__ dtrace_ecbdesc_t ;


 scalar_t__ dtrace_probe_info (int *,TYPE_2__*,int *) ;
 int oprintf (char*,int ,int ,int ,int ) ;
 int print_probe_info (int *) ;

__attribute__((used)) static int
info_stmt(dtrace_hdl_t *dtp, dtrace_prog_t *pgp,
    dtrace_stmtdesc_t *stp, dtrace_ecbdesc_t **last)
{
 dtrace_ecbdesc_t *edp = stp->dtsd_ecbdesc;
 dtrace_probedesc_t *pdp = &edp->dted_probe;
 dtrace_probeinfo_t p;

 if (edp == *last)
  return (0);

 oprintf("\n%s:%s:%s:%s\n",
     pdp->dtpd_provider, pdp->dtpd_mod, pdp->dtpd_func, pdp->dtpd_name);

 if (dtrace_probe_info(dtp, pdp, &p) == 0)
  print_probe_info(&p);

 *last = edp;
 return (0);
}
