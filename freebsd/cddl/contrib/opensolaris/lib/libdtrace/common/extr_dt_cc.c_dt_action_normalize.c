
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int n ;
typedef int dtrace_stmtdesc_t ;
struct TYPE_14__ {scalar_t__ dt_gen; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_15__ {void* dtad_arg; int dtad_kind; int dtad_difo; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
struct TYPE_16__ {scalar_t__ dn_kind; TYPE_4__* dn_ident; struct TYPE_16__* dn_list; struct TYPE_16__* dn_args; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_17__ {scalar_t__ di_gen; int di_flags; int di_id; int di_name; } ;
typedef TYPE_4__ dt_ident_t ;


 int DTRACEACT_LIBACT ;
 void* DT_ACT_DENORMALIZE ;
 void* DT_ACT_NORMALIZE ;
 int DT_IDFLG_MOD ;
 scalar_t__ DT_NODE_AGG ;
 int DT_TYPE_NAMELEN ;
 int D_NORMALIZE_AGGARG ;
 int D_NORMALIZE_AGGBAD ;
 int D_NORMALIZE_PROTO ;
 int D_NORMALIZE_SCALAR ;
 int assert (int ) ;
 int dnerror (TYPE_3__*,int ,char*,int ,...) ;
 int dt_action_difconst (TYPE_2__*,int ,int ) ;
 int dt_as (int ) ;
 int dt_cg (int ,TYPE_3__*) ;
 int dt_node_is_scalar (TYPE_3__*) ;
 int dt_node_type_name (TYPE_3__*,char*,int) ;
 TYPE_2__* dt_stmt_action (TYPE_1__*,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int yypcb ;

__attribute__((used)) static void
dt_action_normalize(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dt_ident_t *aid;
 dtrace_actdesc_t *ap;
 dt_node_t *anp, *normal;
 int denormal = (strcmp(dnp->dn_ident->di_name, "denormalize") == 0);

 char n[DT_TYPE_NAMELEN];
 int argc = 0;

 for (anp = dnp->dn_args; anp != ((void*)0); anp = anp->dn_list)
  argc++;

 if ((denormal && argc != 1) || (!denormal && argc != 2)) {
  dnerror(dnp, D_NORMALIZE_PROTO,
      "%s( ) prototype mismatch: %d args passed, %d expected\n",
      dnp->dn_ident->di_name, argc, denormal ? 1 : 2);
 }

 anp = dnp->dn_args;
 assert(anp != ((void*)0));

 if (anp->dn_kind != DT_NODE_AGG) {
  dnerror(dnp, D_NORMALIZE_AGGARG,
      "%s( ) argument #1 is incompatible with prototype:\n"
      "\tprototype: aggregation\n\t argument: %s\n",
      dnp->dn_ident->di_name,
      dt_node_type_name(anp, n, sizeof (n)));
 }

 if ((normal = anp->dn_list) != ((void*)0) && !dt_node_is_scalar(normal)) {
  dnerror(dnp, D_NORMALIZE_SCALAR,
      "%s( ) argument #2 must be of scalar type\n",
      dnp->dn_ident->di_name);
 }

 aid = anp->dn_ident;

 if (aid->di_gen == dtp->dt_gen && !(aid->di_flags & DT_IDFLG_MOD)) {
  dnerror(dnp, D_NORMALIZE_AGGBAD,
      "undefined aggregation: @%s\n", aid->di_name);
 }

 ap = dt_stmt_action(dtp, sdp);
 dt_action_difconst(ap, anp->dn_ident->di_id, DTRACEACT_LIBACT);

 if (denormal) {
  ap->dtad_arg = DT_ACT_DENORMALIZE;
  return;
 }

 ap->dtad_arg = DT_ACT_NORMALIZE;

 assert(normal != ((void*)0));
 ap = dt_stmt_action(dtp, sdp);
 dt_cg(yypcb, normal);

 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = DTRACEACT_LIBACT;
 ap->dtad_arg = DT_ACT_NORMALIZE;
}
