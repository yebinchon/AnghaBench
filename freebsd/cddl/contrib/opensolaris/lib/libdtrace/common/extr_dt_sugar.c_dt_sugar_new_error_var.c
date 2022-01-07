
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_node_t ;


 int DT_TOK_PTR ;
 int dt_node_ident (int ) ;
 int * dt_node_op2 (int ,int ,int ) ;
 int strdup (char*) ;

__attribute__((used)) static dt_node_t *
dt_sugar_new_error_var(void)
{
 return (dt_node_op2(DT_TOK_PTR, dt_node_ident(strdup("self")),
     dt_node_ident(strdup("%error"))));
}
