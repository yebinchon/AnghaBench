
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_21__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef int dtrace_probeinfo_t ;
struct TYPE_35__ {int dtpd_id; int dtpd_name; int dtpd_func; int dtpd_mod; int * dtpd_provider; } ;
typedef TYPE_5__ dtrace_probedesc_t ;
struct TYPE_36__ {int dtpa_args; int dtpa_name; int dtpa_func; int dtpa_mod; int dtpa_provider; } ;
typedef TYPE_6__ dtrace_pattr_t ;
struct TYPE_37__ {int dt_globals; } ;
typedef TYPE_7__ dtrace_hdl_t ;
struct TYPE_30__ {int dtpp_flags; } ;
struct TYPE_32__ {TYPE_1__ dtvd_priv; } ;
struct TYPE_38__ {TYPE_2__ pv_desc; } ;
typedef TYPE_8__ dt_provider_t ;
struct TYPE_39__ {TYPE_4__* pr_pvp; } ;
typedef TYPE_9__ dt_probe_t ;
struct TYPE_28__ {int di_attr; } ;
typedef TYPE_10__ dt_ident_t ;
typedef int attrstr ;
struct TYPE_33__ {TYPE_6__ dtvd_attr; } ;
struct TYPE_34__ {TYPE_3__ pv_desc; } ;
struct TYPE_31__ {int dtp_argc; int dtp_attr; int dtp_arga; } ;
struct TYPE_29__ {int pcb_cflags; TYPE_9__* pcb_probe; TYPE_5__* pcb_pdesc; TYPE_21__ pcb_pinfo; int pcb_jmpbuf; } ;


 int DTRACE_C_ZDEFS ;
 int DTRACE_PRIV_PROC ;
 int D_PDESC_INVAL ;
 int D_PDESC_ZERO ;
 int EDT_COMPILER ;
 int EDT_NOPROBE ;
 int EDT_UNSTABLE ;
 TYPE_6__ _dtrace_prvdesc ;
 int bzero (TYPE_21__*,int) ;
 int dt_attr_str (int ,char*,int) ;
 int dt_dprintf (char*,int *,int ,int ,int ,int ,void*,int ,int ) ;
 TYPE_10__* dt_idhash_lookup (int ,char*) ;
 scalar_t__ dt_pid_create_probes (TYPE_5__*,TYPE_7__*,TYPE_11__*) ;
 TYPE_9__* dt_probe_info (TYPE_7__*,TYPE_5__*,TYPE_21__*) ;
 TYPE_8__* dt_provider_lookup (TYPE_7__*,int *) ;
 int dtrace_errmsg (TYPE_7__*,int) ;
 int dtrace_errno (TYPE_7__*) ;
 scalar_t__ isdigit (int ) ;
 int longjmp (int ,int ) ;
 int strlen (int *) ;
 int xyerror (int ,char*,int ,...) ;
 TYPE_11__* yypcb ;

void
dt_setcontext(dtrace_hdl_t *dtp, dtrace_probedesc_t *pdp)
{
 const dtrace_pattr_t *pap;
 dt_probe_t *prp;
 dt_provider_t *pvp;
 dt_ident_t *idp;
 char attrstr[8];
 int err;
 if (isdigit(pdp->dtpd_provider[strlen(pdp->dtpd_provider) - 1]) &&
     ((pvp = dt_provider_lookup(dtp, pdp->dtpd_provider)) == ((void*)0) ||
     pvp->pv_desc.dtvd_priv.dtpp_flags & DTRACE_PRIV_PROC) &&
     dt_pid_create_probes(pdp, dtp, yypcb) != 0) {
  longjmp(yypcb->pcb_jmpbuf, EDT_COMPILER);
 }






 if ((prp = dt_probe_info(dtp, pdp, &yypcb->pcb_pinfo)) == ((void*)0)) {
  pap = &_dtrace_prvdesc;
  err = dtrace_errno(dtp);
  bzero(&yypcb->pcb_pinfo, sizeof (dtrace_probeinfo_t));
  yypcb->pcb_pinfo.dtp_attr = pap->dtpa_provider;
  yypcb->pcb_pinfo.dtp_arga = pap->dtpa_args;
 } else {
  pap = &prp->pr_pvp->pv_desc.dtvd_attr;
  err = 0;
 }

 if (err == EDT_NOPROBE && !(yypcb->pcb_cflags & DTRACE_C_ZDEFS)) {
  xyerror(D_PDESC_ZERO, "probe description %s:%s:%s:%s does not "
      "match any probes\n", pdp->dtpd_provider, pdp->dtpd_mod,
      pdp->dtpd_func, pdp->dtpd_name);
 }

 if (err != EDT_NOPROBE && err != EDT_UNSTABLE && err != 0)
  xyerror(D_PDESC_INVAL, "%s\n", dtrace_errmsg(dtp, err));

 dt_dprintf("set context to %s:%s:%s:%s [%u] prp=%p attr=%s argc=%d\n",
     pdp->dtpd_provider, pdp->dtpd_mod, pdp->dtpd_func, pdp->dtpd_name,
     pdp->dtpd_id, (void *)prp, dt_attr_str(yypcb->pcb_pinfo.dtp_attr,
     attrstr, sizeof (attrstr)), yypcb->pcb_pinfo.dtp_argc);





 if ((idp = dt_idhash_lookup(dtp->dt_globals, "probeprov")) != ((void*)0))
  idp->di_attr = pap->dtpa_provider;
 if ((idp = dt_idhash_lookup(dtp->dt_globals, "probemod")) != ((void*)0))
  idp->di_attr = pap->dtpa_mod;
 if ((idp = dt_idhash_lookup(dtp->dt_globals, "probefunc")) != ((void*)0))
  idp->di_attr = pap->dtpa_func;
 if ((idp = dt_idhash_lookup(dtp->dt_globals, "probename")) != ((void*)0))
  idp->di_attr = pap->dtpa_name;
 if ((idp = dt_idhash_lookup(dtp->dt_globals, "args")) != ((void*)0))
  idp->di_attr = pap->dtpa_args;

 yypcb->pcb_pdesc = pdp;
 yypcb->pcb_probe = prp;
}
