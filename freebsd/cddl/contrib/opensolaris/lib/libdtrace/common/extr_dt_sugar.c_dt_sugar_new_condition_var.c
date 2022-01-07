
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_node_t ;


 int ABS (int) ;
 int DT_TOK_PTR ;
 int asprintf (char**,char*,int ) ;
 int assert (int) ;
 int dt_node_ident (char*) ;
 int * dt_node_op2 (int ,int ,int ) ;
 char* strdup (char*) ;

__attribute__((used)) static dt_node_t *
dt_sugar_new_condition_var(int condid)
{
 char *str;

 if (condid == 0)
  return (((void*)0));
 assert(condid > 0);

 (void) asprintf(&str, "%%condition_%d", ABS(condid));
 return (dt_node_op2(DT_TOK_PTR, dt_node_ident(strdup("this")),
     dt_node_ident(str)));
}
