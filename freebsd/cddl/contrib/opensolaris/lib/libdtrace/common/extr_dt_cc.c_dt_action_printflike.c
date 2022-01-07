
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;


typedef int n ;
struct TYPE_20__ {int dtsd_fmtdata; } ;
typedef TYPE_1__ dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_21__ {int dtdo_len; int dtdo_rtype; int * dtdo_buf; } ;
typedef TYPE_2__ dtrace_difo_t ;
typedef scalar_t__ dtrace_actkind_t ;
struct TYPE_22__ {scalar_t__ dtad_kind; TYPE_2__* dtad_difo; } ;
typedef TYPE_3__ dtrace_actdesc_t ;
struct TYPE_23__ {struct TYPE_23__* dn_list; TYPE_9__* dn_ident; TYPE_11__* dn_args; int dn_line; } ;
typedef TYPE_4__ dt_node_t ;
typedef int dif_instr_t ;
struct TYPE_25__ {int di_name; } ;
struct TYPE_24__ {int pcb_jmpbuf; } ;
struct TYPE_19__ {scalar_t__ dn_kind; char* dn_string; TYPE_4__* dn_list; } ;


 int DIF_INSTR_RET (int ) ;
 int DIF_REG_R0 ;
 int DTRACEACT_AGGREGATION ;
 scalar_t__ DTRACEACT_FREOPEN ;
 int DTRACEACT_ISPRINTFLIKE (scalar_t__) ;
 char* DT_FREOPEN_RESTORE ;
 scalar_t__ DT_NODE_STRING ;
 int DT_PRINTF_EXACTLEN ;
 int DT_TYPE_NAMELEN ;
 int D_FREOPEN_INVALID ;
 int D_PRINTF_ARG_FMT ;
 int EDT_NOMEM ;
 int assert (int ) ;
 int dnerror (TYPE_4__*,int ,char*,int ,char*) ;
 int * dt_alloc (int *,int) ;
 TYPE_2__* dt_as (TYPE_5__*) ;
 int dt_cg (TYPE_5__*,TYPE_4__*) ;
 int dt_free (int *,int *) ;
 int dt_int_rtype ;
 char* dt_node_type_name (TYPE_11__*,char*,int) ;
 int dt_printf_create (int *,char*) ;
 int dt_printf_validate (int ,int ,TYPE_9__*,int,int ,TYPE_4__*) ;
 TYPE_3__* dt_stmt_action (int *,TYPE_1__*) ;
 TYPE_2__* dt_zalloc (int *,int) ;
 int longjmp (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int yylineno ;
 TYPE_5__* yypcb ;

__attribute__((used)) static void
dt_action_printflike(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp,
    dtrace_actkind_t kind)
{
 dt_node_t *anp, *arg1;
 dtrace_actdesc_t *ap = ((void*)0);
 char n[DT_TYPE_NAMELEN], *str;

 assert(DTRACEACT_ISPRINTFLIKE(kind));

 if (dnp->dn_args->dn_kind != DT_NODE_STRING) {
  dnerror(dnp, D_PRINTF_ARG_FMT,
      "%s( ) argument #1 is incompatible with prototype:\n"
      "\tprototype: string constant\n\t argument: %s\n",
      dnp->dn_ident->di_name,
      dt_node_type_name(dnp->dn_args, n, sizeof (n)));
 }

 arg1 = dnp->dn_args->dn_list;
 yylineno = dnp->dn_line;
 str = dnp->dn_args->dn_string;
 if (kind == DTRACEACT_FREOPEN) {
  if (strcmp(str, DT_FREOPEN_RESTORE) == 0) {






   dnerror(dnp, D_FREOPEN_INVALID,
       "%s( ) argument #1 cannot be \"%s\"\n",
       dnp->dn_ident->di_name, DT_FREOPEN_RESTORE);
  }

  if (str[0] == '\0')
   str = DT_FREOPEN_RESTORE;
 }

 sdp->dtsd_fmtdata = dt_printf_create(dtp, str);

 dt_printf_validate(sdp->dtsd_fmtdata, DT_PRINTF_EXACTLEN,
     dnp->dn_ident, 1, DTRACEACT_AGGREGATION, arg1);

 if (arg1 == ((void*)0)) {
  dif_instr_t *dbuf;
  dtrace_difo_t *dp;

  if ((dbuf = dt_alloc(dtp, sizeof (dif_instr_t))) == ((void*)0) ||
      (dp = dt_zalloc(dtp, sizeof (dtrace_difo_t))) == ((void*)0)) {
   dt_free(dtp, dbuf);
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
  }

  dbuf[0] = DIF_INSTR_RET(DIF_REG_R0);

  dp->dtdo_buf = dbuf;
  dp->dtdo_len = 1;
  dp->dtdo_rtype = dt_int_rtype;

  ap = dt_stmt_action(dtp, sdp);
  ap->dtad_difo = dp;
  ap->dtad_kind = kind;
  return;
 }

 for (anp = arg1; anp != ((void*)0); anp = anp->dn_list) {
  ap = dt_stmt_action(dtp, sdp);
  dt_cg(yypcb, anp);
  ap->dtad_difo = dt_as(yypcb);
  ap->dtad_kind = kind;
 }
}
