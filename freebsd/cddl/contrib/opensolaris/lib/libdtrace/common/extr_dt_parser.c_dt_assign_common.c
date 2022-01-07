
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dn_op; scalar_t__ dn_kind; int dn_flags; int dn_attr; struct TYPE_8__* dn_right; struct TYPE_8__* dn_left; } ;
typedef TYPE_1__ dt_node_t ;


 int DT_NF_LVALUE ;
 int DT_NF_WRITABLE ;
 scalar_t__ DT_NODE_INT ;
 int D_OP_LVAL ;
 int D_OP_WRITE ;
 int dt_attr_min (int ,int ) ;
 int dt_cast (TYPE_1__*,TYPE_1__*) ;
 int dt_node_attr_assign (TYPE_1__*,int ) ;
 int dt_node_type_propagate (TYPE_1__*,TYPE_1__*) ;
 int opstr (int) ;
 int xyerror (int ,char*,int ) ;

__attribute__((used)) static void
dt_assign_common(dt_node_t *dnp)
{
 dt_node_t *lp = dnp->dn_left;
 dt_node_t *rp = dnp->dn_right;
 int op = dnp->dn_op;

 if (rp->dn_kind == DT_NODE_INT)
  dt_cast(lp, rp);

 if (!(lp->dn_flags & DT_NF_LVALUE)) {
  xyerror(D_OP_LVAL, "operator %s requires modifiable "
      "lvalue as an operand\n", opstr(op));

 }

 if (!(lp->dn_flags & DT_NF_WRITABLE)) {
  xyerror(D_OP_WRITE, "operator %s can only be applied "
      "to a writable variable\n", opstr(op));
 }

 dt_node_type_propagate(lp, dnp);
 dt_node_attr_assign(dnp, dt_attr_min(lp->dn_attr, rp->dn_attr));
}
