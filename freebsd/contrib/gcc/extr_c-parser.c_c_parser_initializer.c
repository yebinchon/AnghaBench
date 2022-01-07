
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {int value; } ;
typedef int c_parser ;


 scalar_t__ COMPOUND_LITERAL_EXPR ;
 int CPP_OPEN_BRACE ;
 int NULL_TREE ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 struct c_expr c_parser_braced_init (int *,int ,int) ;
 struct c_expr c_parser_expr_no_commas (int *,int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;

__attribute__((used)) static struct c_expr
c_parser_initializer (c_parser *parser)
{
  if (c_parser_next_token_is (parser, CPP_OPEN_BRACE))
    return c_parser_braced_init (parser, NULL_TREE, 0);
  else
    {
      struct c_expr ret;
      ret = c_parser_expr_no_commas (parser, ((void*)0));
      if (TREE_CODE (ret.value) != STRING_CST
   && TREE_CODE (ret.value) != COMPOUND_LITERAL_EXPR)
 ret = default_function_array_conversion (ret);
      return ret;
    }
}
