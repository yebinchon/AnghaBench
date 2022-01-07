
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* dtsd_ecbdesc; } ;
typedef TYPE_3__ dtrace_stmtdesc_t ;
struct TYPE_13__ {TYPE_5__* dted_action; } ;
typedef TYPE_4__ dtrace_ecbdesc_t ;
struct TYPE_14__ {scalar_t__ dtad_kind; TYPE_2__* dtad_difo; struct TYPE_14__* dtad_next; } ;
typedef TYPE_5__ dtrace_actdesc_t ;
typedef int dt_node_t ;
struct TYPE_15__ {TYPE_3__* pcb_stmt; int pcb_hdl; int pcb_jmpbuf; int pcb_prog; } ;
struct TYPE_10__ {scalar_t__ dtdt_kind; scalar_t__ dtdt_size; } ;
struct TYPE_11__ {TYPE_1__ dtdo_rtype; } ;


 scalar_t__ DIF_TYPE_CTF ;
 scalar_t__ DTRACEACT_COMMIT ;
 scalar_t__ DTRACEACT_DIFEXPR ;
 scalar_t__ DTRACEACT_DISCARD ;
 scalar_t__ DTRACEACT_EXIT ;
 scalar_t__ DTRACEACT_ISAGG (scalar_t__) ;
 scalar_t__ DTRACEACT_SPECULATE ;
 int D_ACT_SPEC ;
 int D_AGG_COMM ;
 int D_AGG_SPEC ;
 int D_COMM_COMM ;
 int D_COMM_DREC ;
 int D_DREC_COMM ;
 int D_EXIT_SPEC ;
 int D_SPEC_COMM ;
 int D_SPEC_DREC ;
 int D_SPEC_SPEC ;
 int dnerror (int const*,int ,char*) ;
 scalar_t__ dt_action_destructive (TYPE_5__*) ;
 int dtrace_errno (int ) ;
 scalar_t__ dtrace_stmt_add (int ,int ,TYPE_3__*) ;
 int longjmp (int ,int ) ;
 TYPE_6__* yypcb ;

__attribute__((used)) static void
dt_stmt_append(dtrace_stmtdesc_t *sdp, const dt_node_t *dnp)
{
 dtrace_ecbdesc_t *edp = sdp->dtsd_ecbdesc;
 dtrace_actdesc_t *ap, *tap;
 int commit = 0;
 int speculate = 0;
 int datarec = 0;




 for (ap = edp->dted_action; ap != ((void*)0); ap = ap->dtad_next) {
  if (ap->dtad_kind == DTRACEACT_COMMIT) {
   if (commit) {
    dnerror(dnp, D_COMM_COMM, "commit( ) may "
        "not follow commit( )\n");
   }

   if (datarec) {
    dnerror(dnp, D_COMM_DREC, "commit( ) may "
        "not follow data-recording action(s)\n");
   }

   for (tap = ap; tap != ((void*)0); tap = tap->dtad_next) {
    if (!DTRACEACT_ISAGG(tap->dtad_kind))
     continue;

    dnerror(dnp, D_AGG_COMM, "aggregating actions "
        "may not follow commit( )\n");
   }

   commit = 1;
   continue;
  }

  if (ap->dtad_kind == DTRACEACT_SPECULATE) {
   if (speculate) {
    dnerror(dnp, D_SPEC_SPEC, "speculate( ) may "
        "not follow speculate( )\n");
   }

   if (commit) {
    dnerror(dnp, D_SPEC_COMM, "speculate( ) may "
        "not follow commit( )\n");
   }

   if (datarec) {
    dnerror(dnp, D_SPEC_DREC, "speculate( ) may "
        "not follow data-recording action(s)\n");
   }

   speculate = 1;
   continue;
  }

  if (DTRACEACT_ISAGG(ap->dtad_kind)) {
   if (speculate) {
    dnerror(dnp, D_AGG_SPEC, "aggregating actions "
        "may not follow speculate( )\n");
   }

   datarec = 1;
   continue;
  }

  if (speculate) {
   if (dt_action_destructive(ap)) {
    dnerror(dnp, D_ACT_SPEC, "destructive actions "
        "may not follow speculate( )\n");
   }

   if (ap->dtad_kind == DTRACEACT_EXIT) {
    dnerror(dnp, D_EXIT_SPEC, "exit( ) may not "
        "follow speculate( )\n");
   }
  }




  if (dt_action_destructive(ap) ||
      ap->dtad_kind == DTRACEACT_DISCARD)
   continue;

  if (ap->dtad_kind == DTRACEACT_DIFEXPR &&
      ap->dtad_difo->dtdo_rtype.dtdt_kind == DIF_TYPE_CTF &&
      ap->dtad_difo->dtdo_rtype.dtdt_size == 0)
   continue;

  if (commit) {
   dnerror(dnp, D_DREC_COMM, "data-recording actions "
       "may not follow commit( )\n");
  }

  if (!speculate)
   datarec = 1;
 }

 if (dtrace_stmt_add(yypcb->pcb_hdl, yypcb->pcb_prog, sdp) != 0)
  longjmp(yypcb->pcb_jmpbuf, dtrace_errno(yypcb->pcb_hdl));

 if (yypcb->pcb_stmt == sdp)
  yypcb->pcb_stmt = ((void*)0);
}
