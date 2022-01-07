
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_18__ {int dn_attr; struct TYPE_18__* dn_expr; int dn_type; int * dn_ctfp; struct TYPE_18__* dn_right; struct TYPE_18__* dn_left; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_19__ {int pcb_hdl; } ;


 int B_FALSE ;
 int DT_IDFLG_REF ;
 int * DT_STR_CTFP (int ) ;
 int DT_STR_TYPE (int ) ;
 int D_OP_ACT ;
 int D_OP_DYN ;
 int D_OP_INCOMPAT ;
 int D_OP_SCALAR ;
 scalar_t__ ctf_type_compat (int *,int ,int *,int ) ;
 int dt_attr_min (int ,int ) ;
 int dt_node_attr_assign (TYPE_1__*,int ) ;
 void* dt_node_cook (TYPE_1__*,int ) ;
 scalar_t__ dt_node_is_actfunc (TYPE_1__*) ;
 scalar_t__ dt_node_is_dynamic (TYPE_1__*) ;
 scalar_t__ dt_node_is_integer (TYPE_1__*) ;
 scalar_t__ dt_node_is_ptrcompat (TYPE_1__*,TYPE_1__*,int **,int *) ;
 int dt_node_is_scalar (TYPE_1__*) ;
 scalar_t__ dt_node_is_strcompat (TYPE_1__*) ;
 scalar_t__ dt_node_is_string (TYPE_1__*) ;
 int dt_node_type_assign (TYPE_1__*,int *,int ,int ) ;
 int dt_type_promote (TYPE_1__*,TYPE_1__*,int **,int *) ;
 int xyerror (int ,char*) ;
 TYPE_2__* yypcb ;

__attribute__((used)) static dt_node_t *
dt_cook_op3(dt_node_t *dnp, uint_t idflags)
{
 dt_node_t *lp, *rp;
 ctf_file_t *ctfp;
 ctf_id_t type;

 dnp->dn_expr = dt_node_cook(dnp->dn_expr, DT_IDFLG_REF);
 lp = dnp->dn_left = dt_node_cook(dnp->dn_left, DT_IDFLG_REF);
 rp = dnp->dn_right = dt_node_cook(dnp->dn_right, DT_IDFLG_REF);

 if (!dt_node_is_scalar(dnp->dn_expr)) {
  xyerror(D_OP_SCALAR,
      "operator ?: expression must be of scalar type\n");
 }

 if (dt_node_is_dynamic(lp) || dt_node_is_dynamic(rp)) {
  xyerror(D_OP_DYN,
      "operator ?: operands cannot be of dynamic type\n");
 }






 if (ctf_type_compat(lp->dn_ctfp, lp->dn_type,
     rp->dn_ctfp, rp->dn_type)) {
  ctfp = lp->dn_ctfp;
  type = lp->dn_type;
 } else if (dt_node_is_integer(lp) && dt_node_is_integer(rp)) {
  dt_type_promote(lp, rp, &ctfp, &type);
 } else if (dt_node_is_strcompat(lp) && dt_node_is_strcompat(rp) &&
     (dt_node_is_string(lp) || dt_node_is_string(rp))) {
  ctfp = DT_STR_CTFP(yypcb->pcb_hdl);
  type = DT_STR_TYPE(yypcb->pcb_hdl);
 } else if (dt_node_is_ptrcompat(lp, rp, &ctfp, &type) == 0) {
  xyerror(D_OP_INCOMPAT,
      "operator ?: operands must have compatible types\n");
 }

 if (dt_node_is_actfunc(lp) || dt_node_is_actfunc(rp)) {
  xyerror(D_OP_ACT, "action cannot be "
      "used in a conditional context\n");
 }

 dt_node_type_assign(dnp, ctfp, type, B_FALSE);
 dt_node_attr_assign(dnp, dt_attr_min(dnp->dn_expr->dn_attr,
     dt_attr_min(lp->dn_attr, rp->dn_attr)));

 return (dnp);
}
