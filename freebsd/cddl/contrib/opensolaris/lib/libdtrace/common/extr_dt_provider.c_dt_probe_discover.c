
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_32__ {scalar_t__ dtt_type; int dtt_flags; int * dtt_ctfp; int * dtt_object; } ;
typedef TYPE_2__ dtrace_typeinfo_t ;
struct TYPE_33__ {char* dtpd_provider; int dtpd_id; } ;
typedef TYPE_3__ dtrace_probedesc_t ;
struct TYPE_34__ {int dt_gen; } ;
typedef TYPE_4__ dtrace_hdl_t ;
struct TYPE_35__ {int dtargd_ndx; size_t dtargd_mapping; char* dtargd_native; char* dtargd_xlate; int dtargd_id; } ;
typedef TYPE_5__ dtrace_argdesc_t ;
struct TYPE_31__ {char* dtvd_name; } ;
struct TYPE_36__ {TYPE_1__ pv_desc; TYPE_4__* pv_hdl; } ;
typedef TYPE_6__ dt_provider_t ;
struct TYPE_37__ {size_t* pr_mapping; TYPE_2__* pr_argv; int * pr_xargv; int * pr_nargv; } ;
typedef TYPE_7__ dt_probe_t ;
typedef int dt_node_t ;
typedef int dt_ident_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ CTF_ERR ;
 int DTRACEIOC_PROBEARG ;
 int DTRACE_ARGNONE ;
 int DTRACE_IDNONE ;
 int DTT_FL_USER ;
 int DT_IDENT_PROBE ;
 int DT_IDFLG_ORPHAN ;
 int EDT_NOMEM ;
 int MAX (int,size_t) ;
 int _dtrace_argmax ;
 int _dtrace_defattr ;
 TYPE_5__* alloca (int) ;
 int assert (int) ;
 int bzero (TYPE_5__*,int) ;
 int dt_dprintf (char*,char*,char*,char*,...) ;
 int * dt_ident_create (char*,int ,int ,int ,int ,int ,int *,int *,int ) ;
 int dt_ident_destroy (int *) ;
 int dt_idops_probe ;
 scalar_t__ dt_ioctl (TYPE_4__*,int ,TYPE_5__*) ;
 int dt_node_type_assign (int ,int *,scalar_t__,int ) ;
 int dt_node_type_propagate (int ,int ) ;
 int dt_pid_get_types (TYPE_4__*,TYPE_3__ const*,TYPE_5__*,int*) ;
 int * dt_probe_alloc_args (TYPE_6__*,int) ;
 TYPE_7__* dt_probe_create (TYPE_4__*,int *,int,int *,int,int *,int) ;
 int dt_probe_declare (TYPE_6__*,TYPE_7__*) ;
 char* dt_probe_key (TYPE_3__ const*,TYPE_5__*) ;
 int dt_probe_keylen (TYPE_3__ const*) ;
 int dt_set_errno (TYPE_4__*,int ) ;
 int dtrace_errmsg (TYPE_4__*,int ) ;
 int dtrace_errno (TYPE_4__*) ;
 scalar_t__ dtrace_type_strcompile (TYPE_4__*,char*,TYPE_2__*) ;
 int errno ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static dt_probe_t *
dt_probe_discover(dt_provider_t *pvp, const dtrace_probedesc_t *pdp)
{
 dtrace_hdl_t *dtp = pvp->pv_hdl;
 char *name = dt_probe_key(pdp, alloca(dt_probe_keylen(pdp)));

 dt_node_t *xargs, *nargs;
 dt_ident_t *idp;
 dt_probe_t *prp;

 dtrace_typeinfo_t dtt;
 int i, nc, xc;

 int adc = _dtrace_argmax;
 dtrace_argdesc_t *adv = alloca(sizeof (dtrace_argdesc_t) * adc);
 dtrace_argdesc_t *adp = adv;

 assert(strcmp(pvp->pv_desc.dtvd_name, pdp->dtpd_provider) == 0);
 assert(pdp->dtpd_id != DTRACE_IDNONE);

 dt_dprintf("discovering probe %s:%s id=%d\n",
     pvp->pv_desc.dtvd_name, name, pdp->dtpd_id);

 for (nc = -1, i = 0; i < adc; i++, adp++) {
  bzero(adp, sizeof (dtrace_argdesc_t));
  adp->dtargd_ndx = i;
  adp->dtargd_id = pdp->dtpd_id;

  if (dt_ioctl(dtp, DTRACEIOC_PROBEARG, adp) != 0) {
   (void) dt_set_errno(dtp, errno);
   return (((void*)0));
  }

  if (adp->dtargd_ndx == DTRACE_ARGNONE)
   break;

  nc = MAX(nc, adp->dtargd_mapping);
 }

 xc = i;
 nc++;
 if (xc == 0 && nc == 0 &&
     strncmp(pvp->pv_desc.dtvd_name, "pid", 3) == 0) {
  nc = adc;
  dt_pid_get_types(dtp, pdp, adv, &nc);
  xc = nc;
 }






 xargs = dt_probe_alloc_args(pvp, xc);
 nargs = dt_probe_alloc_args(pvp, nc);

 if ((xc != 0 && xargs == ((void*)0)) || (nc != 0 && nargs == ((void*)0)))
  return (((void*)0));

 idp = dt_ident_create(name, DT_IDENT_PROBE,
     DT_IDFLG_ORPHAN, pdp->dtpd_id, _dtrace_defattr, 0,
     &dt_idops_probe, ((void*)0), dtp->dt_gen);

 if (idp == ((void*)0)) {
  (void) dt_set_errno(dtp, EDT_NOMEM);
  return (((void*)0));
 }

 if ((prp = dt_probe_create(dtp, idp, 2,
     nargs, nc, xargs, xc)) == ((void*)0)) {
  dt_ident_destroy(idp);
  return (((void*)0));
 }

 dt_probe_declare(pvp, prp);






 for (adp = adv, i = 0; i < xc; i++, adp++) {
  if (dtrace_type_strcompile(dtp,
      adp->dtargd_native, &dtt) != 0) {
   dt_dprintf("failed to resolve input type %s "
       "for %s:%s arg #%d: %s\n", adp->dtargd_native,
       pvp->pv_desc.dtvd_name, name, i + 1,
       dtrace_errmsg(dtp, dtrace_errno(dtp)));

   dtt.dtt_object = ((void*)0);
   dtt.dtt_ctfp = ((void*)0);
   dtt.dtt_type = CTF_ERR;
  } else {
   dt_node_type_assign(prp->pr_nargv[adp->dtargd_mapping],
       dtt.dtt_ctfp, dtt.dtt_type,
       dtt.dtt_flags & DTT_FL_USER ? B_TRUE : B_FALSE);
  }

  if (dtt.dtt_type != CTF_ERR && (adp->dtargd_xlate[0] == '\0' ||
      strcmp(adp->dtargd_native, adp->dtargd_xlate) == 0)) {
   dt_node_type_propagate(prp->pr_nargv[
       adp->dtargd_mapping], prp->pr_xargv[i]);
  } else if (dtrace_type_strcompile(dtp,
      adp->dtargd_xlate, &dtt) != 0) {
   dt_dprintf("failed to resolve output type %s "
       "for %s:%s arg #%d: %s\n", adp->dtargd_xlate,
       pvp->pv_desc.dtvd_name, name, i + 1,
       dtrace_errmsg(dtp, dtrace_errno(dtp)));

   dtt.dtt_object = ((void*)0);
   dtt.dtt_ctfp = ((void*)0);
   dtt.dtt_type = CTF_ERR;
  } else {
   dt_node_type_assign(prp->pr_xargv[i],
       dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);
  }

  prp->pr_mapping[i] = adp->dtargd_mapping;
  prp->pr_argv[i] = dtt;
 }

 return (prp);
}
