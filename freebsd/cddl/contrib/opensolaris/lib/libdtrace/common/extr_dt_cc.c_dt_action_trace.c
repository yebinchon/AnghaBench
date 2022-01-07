
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int * dtsd_strdata; } ;
typedef TYPE_2__ dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_21__ {int dtad_kind; int dtad_difo; } ;
typedef TYPE_3__ dtrace_actdesc_t ;
struct TYPE_22__ {int dn_type; int dn_ctfp; TYPE_1__* dn_ident; TYPE_9__* dn_args; } ;
typedef TYPE_4__ dt_node_t ;
struct TYPE_23__ {char* dm_name; scalar_t__ dm_pid; } ;
typedef TYPE_5__ dt_module_t ;
typedef int boolean_t ;
struct TYPE_25__ {scalar_t__ dn_kind; } ;
struct TYPE_24__ {int pcb_jmpbuf; TYPE_4__* pcb_dret; } ;
struct TYPE_19__ {scalar_t__ di_id; } ;


 int DTRACEACT_DIFEXPR ;
 scalar_t__ DT_ACT_PRINT ;
 scalar_t__ DT_ACT_TRACE ;
 int DT_IDENT_XLPTR ;
 scalar_t__ DT_NODE_AGG ;
 int D_PRINT_AGG ;
 int D_PRINT_DYN ;
 int D_PRINT_VOID ;
 int D_TRACE_AGG ;
 int D_TRACE_DYN ;
 int D_TRACE_VOID ;
 int EDT_NOMEM ;
 int assert (int) ;
 int dnerror (TYPE_9__*,int ,char*,char const*,...) ;
 int * dt_alloc (int *,size_t) ;
 int dt_as (TYPE_6__*) ;
 int dt_cg (TYPE_6__*,TYPE_9__*) ;
 int dt_module_getlibid (int *,TYPE_5__*,int ) ;
 TYPE_5__* dt_module_lookup_by_ctf (int *,int ) ;
 scalar_t__ dt_node_is_void (TYPE_9__*) ;
 int * dt_node_resolve (TYPE_9__*,int ) ;
 TYPE_3__* dt_stmt_action (int *,TYPE_2__*) ;
 int longjmp (int ,int ) ;
 int snprintf (int *,size_t,char*,char*,int,...) ;
 TYPE_6__* yypcb ;

__attribute__((used)) static void
dt_action_trace(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 int ctflib;

 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);
 boolean_t istrace = (dnp->dn_ident->di_id == DT_ACT_TRACE);
 const char *act = istrace ? "trace" : "print";

 if (dt_node_is_void(dnp->dn_args)) {
  dnerror(dnp->dn_args, istrace ? D_TRACE_VOID : D_PRINT_VOID,
      "%s( ) may not be applied to a void expression\n", act);
 }

 if (dt_node_resolve(dnp->dn_args, DT_IDENT_XLPTR) != ((void*)0)) {
  dnerror(dnp->dn_args, istrace ? D_TRACE_DYN : D_PRINT_DYN,
      "%s( ) may not be applied to a translated pointer\n", act);
 }

 if (dnp->dn_args->dn_kind == DT_NODE_AGG) {
  dnerror(dnp->dn_args, istrace ? D_TRACE_AGG : D_PRINT_AGG,
      "%s( ) may not be applied to an aggregation%s\n", act,
      istrace ? "" : " -- did you mean printa()?");
 }

 dt_cg(yypcb, dnp->dn_args);
 if (dnp->dn_ident->di_id == DT_ACT_PRINT) {
  dt_node_t *dret;
  size_t n;
  dt_module_t *dmp;

  dret = yypcb->pcb_dret;
  dmp = dt_module_lookup_by_ctf(dtp, dret->dn_ctfp);

  n = snprintf(((void*)0), 0, "%s`%ld", dmp->dm_name, dret->dn_type) + 1;
  if (dmp->dm_pid != 0) {
   ctflib = dt_module_getlibid(dtp, dmp, dret->dn_ctfp);
   assert(ctflib >= 0);
   n = snprintf(((void*)0), 0, "%s`%d`%ld", dmp->dm_name,
       ctflib, dret->dn_type) + 1;
  } else {
   n = snprintf(((void*)0), 0, "%s`%ld", dmp->dm_name,
       dret->dn_type) + 1;
  }
  sdp->dtsd_strdata = dt_alloc(dtp, n);
  if (sdp->dtsd_strdata == ((void*)0))
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
  (void) snprintf(sdp->dtsd_strdata, n, "%s`%ld", dmp->dm_name,
      dret->dn_type);
  if (dmp->dm_pid != 0) {
   (void) snprintf(sdp->dtsd_strdata, n, "%s`%d`%ld",
       dmp->dm_name, ctflib, dret->dn_type);
  } else {
   (void) snprintf(sdp->dtsd_strdata, n, "%s`%ld",
       dmp->dm_name, dret->dn_type);
  }
 }

 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = DTRACEACT_DIFEXPR;
}
