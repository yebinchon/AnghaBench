
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int n ;
typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_13__ {TYPE_9__* dtad_difo; int dtad_kind; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
struct TYPE_14__ {scalar_t__ dn_value; struct TYPE_14__* dn_list; struct TYPE_14__* dn_args; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_12__ {scalar_t__ dtdt_size; int dtdt_flags; } ;
struct TYPE_15__ {TYPE_1__ dtdo_rtype; } ;


 int DIF_TF_BYREF ;
 int DTRACEACT_PRINTM ;
 int DT_TYPE_NAMELEN ;
 int D_PRINTM_ADDR ;
 int D_PRINTM_SIZE ;
 int dnerror (TYPE_3__*,int ,char*,...) ;
 TYPE_9__* dt_as (int ) ;
 int dt_cg (int ,TYPE_3__*) ;
 scalar_t__ dt_node_is_pointer (TYPE_3__*) ;
 scalar_t__ dt_node_is_posconst (TYPE_3__*) ;
 int dt_node_type_name (TYPE_3__*,char*,int) ;
 TYPE_2__* dt_stmt_action (int *,int *) ;
 int yypcb ;

__attribute__((used)) static void
dt_action_printm(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);

 dt_node_t *size = dnp->dn_args;
 dt_node_t *addr = dnp->dn_args->dn_list;

 char n[DT_TYPE_NAMELEN];

 if (dt_node_is_posconst(size) == 0) {
  dnerror(size, D_PRINTM_SIZE, "printm( ) argument #1 must "
      "be a non-zero positive integral constant expression\n");
 }

 if (dt_node_is_pointer(addr) == 0) {
  dnerror(addr, D_PRINTM_ADDR,
      "printm( ) argument #2 is incompatible with "
      "prototype:\n\tprototype: pointer\n"
      "\t argument: %s\n",
      dt_node_type_name(addr, n, sizeof (n)));
 }

 dt_cg(yypcb, addr);
 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = DTRACEACT_PRINTM;

 ap->dtad_difo->dtdo_rtype.dtdt_flags |= DIF_TF_BYREF;
 ap->dtad_difo->dtdo_rtype.dtdt_size = size->dn_value + sizeof(uintptr_t);
}
