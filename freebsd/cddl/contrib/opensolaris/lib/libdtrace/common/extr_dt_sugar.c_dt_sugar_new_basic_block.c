
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtsp_num_conditions; int dtsp_pdescs; } ;
typedef TYPE_1__ dt_sugar_parse_t ;
typedef int dt_node_t ;


 int DT_TOK_LAND ;
 int DT_TOK_LNEG ;
 int dt_node_clause (int ,int *,int *) ;
 int * dt_node_op1 (int ,int ) ;
 int * dt_node_op2 (int ,int *,int ) ;
 int dt_sugar_append_clause (TYPE_1__*,int ) ;
 int dt_sugar_new_condition_var (int) ;
 int dt_sugar_new_error_var () ;

__attribute__((used)) static void
dt_sugar_new_basic_block(dt_sugar_parse_t *dp, int condid, dt_node_t *stmts)
{
 dt_node_t *pred = ((void*)0);

 if (condid == 0) {





  if (dp->dtsp_num_conditions != 0) {
   pred = dt_node_op1(DT_TOK_LNEG,
       dt_sugar_new_error_var());
  }
 } else {
  pred = dt_node_op2(DT_TOK_LAND,
      dt_node_op1(DT_TOK_LNEG, dt_sugar_new_error_var()),
      dt_sugar_new_condition_var(condid));
 }
 dt_sugar_append_clause(dp,
     dt_node_clause(dp->dtsp_pdescs, pred, stmts));
}
