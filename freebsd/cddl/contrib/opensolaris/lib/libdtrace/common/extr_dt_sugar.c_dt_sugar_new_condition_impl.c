
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtsp_pdescs; } ;
typedef TYPE_1__ dt_sugar_parse_t ;
typedef int dt_node_t ;


 int DT_TOK_ASGN ;
 int DT_TOK_LAND ;
 int DT_TOK_LNEG ;
 int * dt_node_clause (int ,int *,int *) ;
 int dt_node_int (int) ;
 int * dt_node_op1 (int ,int ) ;
 int * dt_node_op2 (int ,int ,int *) ;
 int * dt_node_statement (int *) ;
 int dt_sugar_new_condition_var (int) ;
 int dt_sugar_new_error_var () ;

__attribute__((used)) static dt_node_t *
dt_sugar_new_condition_impl(dt_sugar_parse_t *dp,
    dt_node_t *pred, int condid, int newcond)
{
 dt_node_t *value, *body, *newpred;


 newpred = dt_node_op1(DT_TOK_LNEG, dt_sugar_new_error_var());

 if (condid == 0) {
  value = dt_node_op2(DT_TOK_LAND, dt_node_int(1), pred);
 } else {

  value = dt_node_op2(DT_TOK_LAND,
      dt_sugar_new_condition_var(condid), pred);
 }


 body = dt_node_statement(dt_node_op2(DT_TOK_ASGN,
     dt_sugar_new_condition_var(newcond), value));

 return (dt_node_clause(dp->dtsp_pdescs, newpred, body));
}
