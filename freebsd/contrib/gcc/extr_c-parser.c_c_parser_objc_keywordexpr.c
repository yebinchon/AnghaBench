
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int c_parser_expr_list (int *,int) ;

__attribute__((used)) static tree
c_parser_objc_keywordexpr (c_parser *parser)
{
  tree list = c_parser_expr_list (parser, 1);
  if (TREE_CHAIN (list) == NULL_TREE)
    {


      return TREE_VALUE (list);
    }
  else
    {

      return list;
    }
}
