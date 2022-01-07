
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct c_type_name {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ keyword; int value; } ;
typedef TYPE_1__ c_token ;
typedef int c_parser ;


 scalar_t__ CPP_KEYWORD ;
 int NULL_TREE ;
 scalar_t__ RID_BYCOPY ;
 scalar_t__ RID_BYREF ;
 scalar_t__ RID_IN ;
 scalar_t__ RID_INOUT ;
 scalar_t__ RID_ONEWAY ;
 scalar_t__ RID_OUT ;
 int build_tree_list (int ,int ) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_starts_typename (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 struct c_type_name* c_parser_type_name (int *) ;
 int chainon (int ,int ) ;
 int groktypename (struct c_type_name*) ;

__attribute__((used)) static tree
c_parser_objc_type_name (c_parser *parser)
{
  tree quals = NULL_TREE;
  struct c_type_name *typename = ((void*)0);
  tree type = NULL_TREE;
  while (1)
    {
      c_token *token = c_parser_peek_token (parser);
      if (token->type == CPP_KEYWORD
   && (token->keyword == RID_IN
       || token->keyword == RID_OUT
       || token->keyword == RID_INOUT
       || token->keyword == RID_BYCOPY
       || token->keyword == RID_BYREF
       || token->keyword == RID_ONEWAY))
 {

   quals = chainon (build_tree_list (NULL_TREE, token->value), quals);
   c_parser_consume_token (parser);
 }
      else
 break;
    }
  if (c_parser_next_token_starts_typename (parser))
    typename = c_parser_type_name (parser);
  if (typename)
    type = groktypename (typename);
  return build_tree_list (quals, type);
}
