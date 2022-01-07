
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dt_sugar_parse_t ;
struct TYPE_5__ {scalar_t__ dn_kind; int * dn_alternate_body; int * dn_body; struct TYPE_5__* dn_conditional; } ;
typedef TYPE_1__ dt_node_t ;


 scalar_t__ DT_NODE_IF ;
 int DT_TOK_LNEG ;
 int assert (int) ;
 TYPE_1__* dt_node_op1 (int ,int ) ;
 int dt_sugar_new_condition (int *,TYPE_1__*,int) ;
 int dt_sugar_new_condition_var (int) ;
 int dt_sugar_visit_stmts (int *,int *,int) ;

__attribute__((used)) static void
dt_sugar_do_if(dt_sugar_parse_t *dp, dt_node_t *if_stmt, int precondition)
{
 int newid;

 assert(if_stmt->dn_kind == DT_NODE_IF);


 newid = dt_sugar_new_condition(dp,
     if_stmt->dn_conditional, precondition);


 dt_sugar_visit_stmts(dp, if_stmt->dn_body, newid);






 if (if_stmt->dn_alternate_body != ((void*)0)) {
  dt_node_t *pred =
      dt_node_op1(DT_TOK_LNEG, dt_sugar_new_condition_var(newid));
  dt_sugar_visit_stmts(dp, if_stmt->dn_alternate_body,
      dt_sugar_new_condition(dp, pred, precondition));
 }
}
