
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_pretty_printer ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ boolean_false_node ;
 scalar_t__ boolean_true_node ;
 scalar_t__ c_dialect_cxx () ;
 scalar_t__ flag_isoc99 ;
 int pp_c_identifier (int *,char*) ;
 int pp_c_integer_constant (int *,scalar_t__) ;
 int pp_unsupported_tree (int *,scalar_t__) ;

__attribute__((used)) static void
pp_c_bool_constant (c_pretty_printer *pp, tree b)
{
  if (b == boolean_false_node)
    {
      if (c_dialect_cxx ())
 pp_c_identifier (pp, "false");
      else if (flag_isoc99)
 pp_c_identifier (pp, "_False");
      else
 pp_unsupported_tree (pp, b);
    }
  else if (b == boolean_true_node)
    {
      if (c_dialect_cxx ())
 pp_c_identifier (pp, "true");
      else if (flag_isoc99)
 pp_c_identifier (pp, "_True");
      else
 pp_unsupported_tree (pp, b);
    }
  else if (TREE_CODE (b) == INTEGER_CST)
    pp_c_integer_constant (pp, b);
  else
    pp_unsupported_tree (pp, b);
}
