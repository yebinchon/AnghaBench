
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {int dummy; } ;
typedef int c_parser ;


 struct c_expr c_parser_expression (int *) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;

__attribute__((used)) static struct c_expr
c_parser_expression_conv (c_parser *parser)
{
  struct c_expr expr;
  expr = c_parser_expression (parser);
  expr = default_function_array_conversion (expr);
  return expr;
}
