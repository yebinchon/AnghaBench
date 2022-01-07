
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {int original_code; int value; } ;
typedef int c_parser ;


 int COMPOUND_EXPR ;
 int CPP_COMMA ;
 int build_compound_expr (int ,int ) ;
 int c_parser_consume_token (int *) ;
 struct c_expr c_parser_expr_no_commas (int *,int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;

__attribute__((used)) static struct c_expr
c_parser_expression (c_parser *parser)
{
  struct c_expr expr;
  expr = c_parser_expr_no_commas (parser, ((void*)0));
  while (c_parser_next_token_is (parser, CPP_COMMA))
    {
      struct c_expr next;
      c_parser_consume_token (parser);
      next = c_parser_expr_no_commas (parser, ((void*)0));
      next = default_function_array_conversion (next);
      expr.value = build_compound_expr (expr.value, next.value);
      expr.original_code = COMPOUND_EXPR;
    }
  return expr;
}
