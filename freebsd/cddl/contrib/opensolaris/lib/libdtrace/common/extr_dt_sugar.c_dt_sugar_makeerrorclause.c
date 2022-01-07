
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_node_t ;


 int DT_TOK_ASGN ;
 int * dt_node_clause (int *,int *,int *) ;
 int dt_node_int (int) ;
 int dt_node_op2 (int ,int ,int ) ;
 int * dt_node_pdesc_by_name (int ) ;
 int * dt_node_statement (int ) ;
 int dt_sugar_new_error_var () ;
 int strdup (char*) ;

__attribute__((used)) static dt_node_t *
dt_sugar_makeerrorclause(void)
{
 dt_node_t *acts, *pdesc;

 pdesc = dt_node_pdesc_by_name(strdup("dtrace:::ERROR"));

 acts = dt_node_statement(dt_node_op2(DT_TOK_ASGN,
     dt_sugar_new_error_var(), dt_node_int(1)));

 return (dt_node_clause(pdesc, ((void*)0), acts));
}
