
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dtsd_ecbdesc; } ;
typedef TYPE_1__ dtrace_stmtdesc_t ;
typedef int dtrace_prog_t ;
typedef int dtrace_hdl_t ;
struct TYPE_8__ {char* dtpd_mod; int dtpd_provider; int dtpd_name; int dtpd_func; } ;
struct TYPE_7__ {TYPE_5__ dted_probe; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;


 int dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 scalar_t__ dtrace_probe_iter (int ,TYPE_5__*,int ,int *) ;
 int error (char*,int ,char*,int ,int ,int ) ;
 int g_dtp ;
 int list_probe ;

__attribute__((used)) static int
list_stmt(dtrace_hdl_t *dtp, dtrace_prog_t *pgp,
    dtrace_stmtdesc_t *stp, dtrace_ecbdesc_t **last)
{
 dtrace_ecbdesc_t *edp = stp->dtsd_ecbdesc;

 if (edp == *last)
  return (0);

 if (dtrace_probe_iter(g_dtp, &edp->dted_probe, list_probe, ((void*)0)) != 0) {
  error("failed to match %s:%s:%s:%s: %s\n",
      edp->dted_probe.dtpd_provider, edp->dted_probe.dtpd_mod,
      edp->dted_probe.dtpd_func, edp->dted_probe.dtpd_name,
      dtrace_errmsg(dtp, dtrace_errno(dtp)));
 }

 *last = edp;
 return (0);
}
