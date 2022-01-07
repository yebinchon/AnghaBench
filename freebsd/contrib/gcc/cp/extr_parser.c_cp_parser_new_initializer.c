
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_parser ;


 scalar_t__ cp_parser_parenthesized_expression_list (int *,int,int,int *) ;
 scalar_t__ void_zero_node ;

__attribute__((used)) static tree
cp_parser_new_initializer (cp_parser* parser)
{
  tree expression_list;

  expression_list = (cp_parser_parenthesized_expression_list
       (parser, 0, 0,
                           ((void*)0)));
  if (!expression_list)
    expression_list = void_zero_node;

  return expression_list;
}
