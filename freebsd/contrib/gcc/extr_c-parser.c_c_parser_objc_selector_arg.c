
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_parser ;


 int CPP_COLON ;
 scalar_t__ NULL_TREE ;
 int build_tree_list (scalar_t__,scalar_t__) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 scalar_t__ c_parser_objc_selector (int *) ;
 int c_parser_require (int *,int ,char*) ;
 scalar_t__ chainon (scalar_t__,int ) ;

__attribute__((used)) static tree
c_parser_objc_selector_arg (c_parser *parser)
{
  tree sel = c_parser_objc_selector (parser);
  tree list = NULL_TREE;
  if (sel && c_parser_next_token_is_not (parser, CPP_COLON))
    return sel;
  while (1)
    {
      if (!c_parser_require (parser, CPP_COLON, "expected %<:%>"))
 return list;
      list = chainon (list, build_tree_list (sel, NULL_TREE));
      sel = c_parser_objc_selector (parser);
      if (!sel && c_parser_next_token_is_not (parser, CPP_COLON))
 break;
    }
  return list;
}
