
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TFF_EXPR_IN_PARENS ;
 int TREE_OPERAND (int ,int) ;
 int cxx_pp ;
 int dump_expr (int ,int) ;
 int pp_cxx_identifier (int ,char const*) ;
 int pp_cxx_left_paren (int ) ;
 int pp_cxx_right_paren (int ) ;
 int pp_cxx_whitespace (int ) ;
 int pp_identifier (int ,char*) ;

__attribute__((used)) static void
dump_binary_op (const char *opstring, tree t, int flags)
{
  pp_cxx_left_paren (cxx_pp);
  dump_expr (TREE_OPERAND (t, 0), flags | TFF_EXPR_IN_PARENS);
  pp_cxx_whitespace (cxx_pp);
  if (opstring)
    pp_cxx_identifier (cxx_pp, opstring);
  else
    pp_identifier (cxx_pp, "<unknown operator>");
  pp_cxx_whitespace (cxx_pp);
  dump_expr (TREE_OPERAND (t, 1), flags | TFF_EXPR_IN_PARENS);
  pp_cxx_right_paren (cxx_pp);
}
