
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int n ;
typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_16__ {TYPE_1__* dtad_difo; int dtad_kind; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
struct TYPE_17__ {int dn_value; struct TYPE_17__* dn_list; struct TYPE_17__* dn_args; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_14__ {int dtdt_size; int dtdt_flags; } ;
struct TYPE_15__ {TYPE_10__ dtdo_rtype; } ;


 int DIF_TF_BYREF ;
 int DTRACEACT_TRACEMEM ;
 int DTRACEACT_TRACEMEM_DYNSIZE ;
 int DT_TYPE_NAMELEN ;
 int D_TRACEMEM_ADDR ;
 int D_TRACEMEM_ARGS ;
 int D_TRACEMEM_DYNSIZE ;
 int D_TRACEMEM_SIZE ;
 int dnerror (TYPE_3__*,int ,char*,...) ;
 void* dt_as (int ) ;
 int dt_cg (int ,TYPE_3__*) ;
 TYPE_10__ dt_int_rtype ;
 scalar_t__ dt_node_is_integer (TYPE_3__*) ;
 scalar_t__ dt_node_is_pointer (TYPE_3__*) ;
 scalar_t__ dt_node_is_posconst (TYPE_3__*) ;
 int dt_node_is_scalar (TYPE_3__*) ;
 int dt_node_type_name (TYPE_3__*,char*,int) ;
 TYPE_2__* dt_stmt_action (int *,int *) ;
 int yypcb ;

__attribute__((used)) static void
dt_action_tracemem(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);

 dt_node_t *addr = dnp->dn_args;
 dt_node_t *max = dnp->dn_args->dn_list;
 dt_node_t *size;

 char n[DT_TYPE_NAMELEN];

 if (dt_node_is_integer(addr) == 0 && dt_node_is_pointer(addr) == 0) {
  dnerror(addr, D_TRACEMEM_ADDR,
      "tracemem( ) argument #1 is incompatible with "
      "prototype:\n\tprototype: pointer or integer\n"
      "\t argument: %s\n",
      dt_node_type_name(addr, n, sizeof (n)));
 }

 if (dt_node_is_posconst(max) == 0) {
  dnerror(max, D_TRACEMEM_SIZE, "tracemem( ) argument #2 must "
      "be a non-zero positive integral constant expression\n");
 }

 if ((size = max->dn_list) != ((void*)0)) {
  if (size->dn_list != ((void*)0)) {
   dnerror(size, D_TRACEMEM_ARGS, "tracemem ( ) prototype "
       "mismatch: expected at most 3 args\n");
  }

  if (!dt_node_is_scalar(size)) {
   dnerror(size, D_TRACEMEM_DYNSIZE, "tracemem ( ) "
       "dynamic size (argument #3) must be of "
       "scalar type\n");
  }

  dt_cg(yypcb, size);
  ap->dtad_difo = dt_as(yypcb);
  ap->dtad_difo->dtdo_rtype = dt_int_rtype;
  ap->dtad_kind = DTRACEACT_TRACEMEM_DYNSIZE;

  ap = dt_stmt_action(dtp, sdp);
 }

 dt_cg(yypcb, addr);
 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = DTRACEACT_TRACEMEM;

 ap->dtad_difo->dtdo_rtype.dtdt_flags |= DIF_TF_BYREF;
 ap->dtad_difo->dtdo_rtype.dtdt_size = max->dn_value;
}
