
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int current_function_decl ;
 int record_vars_into (int ,int ) ;

void
record_vars (tree vars)
{
  record_vars_into (vars, current_function_decl);
}
