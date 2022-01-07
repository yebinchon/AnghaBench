
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_parser ;


 int CPP_COMMA ;
 scalar_t__ NULL_TREE ;
 scalar_t__ c_parser_asm_string_literal (int *) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
c_parser_asm_clobbers (c_parser *parser)
{
  tree list = NULL_TREE;
  while (1)
    {
      tree str = c_parser_asm_string_literal (parser);
      if (str)
 list = tree_cons (NULL_TREE, str, list);
      else
 return NULL_TREE;
      if (c_parser_next_token_is (parser, CPP_COMMA))
 c_parser_consume_token (parser);
      else
 break;
    }
  return list;
}
