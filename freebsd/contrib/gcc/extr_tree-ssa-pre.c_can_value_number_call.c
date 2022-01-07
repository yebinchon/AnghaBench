
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ECF_CONST ;
 int ECF_PURE ;
 int call_expr_flags (int ) ;
 int get_call_expr_in (int ) ;

__attribute__((used)) static bool
can_value_number_call (tree stmt)
{
  tree call = get_call_expr_in (stmt);

  if (call_expr_flags (call) & (ECF_PURE | ECF_CONST))
    return 1;
  return 0;
}
