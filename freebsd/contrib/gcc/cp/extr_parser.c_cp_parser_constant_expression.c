
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int integral_constant_expression_p; int allow_non_integral_constant_expression_p; int non_integral_constant_expression_p; } ;
typedef TYPE_1__ cp_parser ;


 int cp_parser_assignment_expression (TYPE_1__*,int) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_constant_expression (cp_parser* parser,
          bool allow_non_constant_p,
          bool *non_constant_p)
{
  bool saved_integral_constant_expression_p;
  bool saved_allow_non_integral_constant_expression_p;
  bool saved_non_integral_constant_expression_p;
  tree expression;
  saved_integral_constant_expression_p = parser->integral_constant_expression_p;
  saved_allow_non_integral_constant_expression_p
    = parser->allow_non_integral_constant_expression_p;
  saved_non_integral_constant_expression_p = parser->non_integral_constant_expression_p;

  parser->integral_constant_expression_p = 1;
  parser->allow_non_integral_constant_expression_p = allow_non_constant_p;
  parser->non_integral_constant_expression_p = 0;
  expression = cp_parser_assignment_expression (parser, 0);

  parser->integral_constant_expression_p
    = saved_integral_constant_expression_p;
  parser->allow_non_integral_constant_expression_p
    = saved_allow_non_integral_constant_expression_p;
  if (allow_non_constant_p)
    *non_constant_p = parser->non_integral_constant_expression_p;
  else if (parser->non_integral_constant_expression_p)
    expression = error_mark_node;
  parser->non_integral_constant_expression_p
    = saved_non_integral_constant_expression_p;

  return expression;
}
