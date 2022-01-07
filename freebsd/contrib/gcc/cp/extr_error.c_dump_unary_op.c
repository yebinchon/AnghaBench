
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TFF_EXPR_IN_PARENS ;
 int TREE_OPERAND (int ,int ) ;
 int cxx_pp ;
 int dump_expr (int ,int) ;
 int pp_cxx_identifier (int ,char const*) ;
 int pp_cxx_left_paren (int ) ;
 int pp_cxx_right_paren (int ) ;

__attribute__((used)) static void
dump_unary_op (const char *opstring, tree t, int flags)
{
  if (flags & TFF_EXPR_IN_PARENS)
    pp_cxx_left_paren (cxx_pp);
  pp_cxx_identifier (cxx_pp, opstring);
  dump_expr (TREE_OPERAND (t, 0), flags & ~TFF_EXPR_IN_PARENS);
  if (flags & TFF_EXPR_IN_PARENS)
    pp_cxx_right_paren (cxx_pp);
}
