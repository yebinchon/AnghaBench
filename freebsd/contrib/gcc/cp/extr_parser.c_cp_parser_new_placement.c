
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int cp_parser_parenthesized_expression_list (int *,int,int,int *) ;

__attribute__((used)) static tree
cp_parser_new_placement (cp_parser* parser)
{
  tree expression_list;


  expression_list = (cp_parser_parenthesized_expression_list
       (parser, 0, 0,
                           ((void*)0)));

  return expression_list;
}
