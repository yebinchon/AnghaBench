
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int keyword; scalar_t__ id_kind; int value; } ;


 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_KEYWORD ;
 scalar_t__ CPP_NAME ;
 int CPP_OPEN_PAREN ;
 scalar_t__ C_ID_ID ;
 int NULL_TREE ;
 int RID_ATTRIBUTE ;
 int build_tree_list (int ,int ) ;
 int c_lex_string_translate ;
 int c_parser_consume_token (int *) ;
 int c_parser_expr_list (int *,int) ;
 scalar_t__ c_parser_next_token_is (int *,scalar_t__) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 TYPE_2__* c_parser_peek_2nd_token (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,scalar_t__,char*) ;
 int chainon (int ,int ) ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
c_parser_attributes (c_parser *parser)
{
  tree attrs = NULL_TREE;
  while (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
    {


      c_lex_string_translate = 0;
      c_parser_consume_token (parser);
      if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
 {
   c_lex_string_translate = 1;
   return attrs;
 }
      if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
 {
   c_lex_string_translate = 1;
   c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
   return attrs;
 }

      while (c_parser_next_token_is (parser, CPP_COMMA)
      || c_parser_next_token_is (parser, CPP_NAME)
      || c_parser_next_token_is (parser, CPP_KEYWORD))
 {
   tree attr, attr_name, attr_args;
   if (c_parser_next_token_is (parser, CPP_COMMA))
     {
       c_parser_consume_token (parser);
       continue;
     }
   if (c_parser_next_token_is (parser, CPP_KEYWORD))
     {


       bool ok;
       switch (c_parser_peek_token (parser)->keyword)
  {
  case 133:
  case 130:
  case 138:
  case 147:
  case 142:
  case 137:
  case 131:
  case 135:
  case 140:
  case 128:
  case 134:
  case 151:
  case 136:
  case 148:
  case 132:
  case 139:
  case 149:
  case 141:
  case 143:
  case 129:
  case 145:
  case 144:
  case 146:
  case 150:
    ok = 1;
    break;
  default:
    ok = 0;
    break;
  }
       if (!ok)
  break;
     }
   attr_name = c_parser_peek_token (parser)->value;
   c_parser_consume_token (parser);
   if (c_parser_next_token_is_not (parser, CPP_OPEN_PAREN))
     {
       attr = build_tree_list (attr_name, NULL_TREE);
       attrs = chainon (attrs, attr);
       continue;
     }
   c_parser_consume_token (parser);




   if (c_parser_next_token_is (parser, CPP_NAME)
       && c_parser_peek_token (parser)->id_kind == C_ID_ID
       && ((c_parser_peek_2nd_token (parser)->type == CPP_COMMA)
    || (c_parser_peek_2nd_token (parser)->type
        == CPP_CLOSE_PAREN)))
     {
       tree arg1 = c_parser_peek_token (parser)->value;
       c_parser_consume_token (parser);
       if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
  attr_args = build_tree_list (NULL_TREE, arg1);
       else
  {
    c_parser_consume_token (parser);
    attr_args = tree_cons (NULL_TREE, arg1,
      c_parser_expr_list (parser, 0));
  }
     }
   else
     {
       if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
  attr_args = NULL_TREE;
       else
  attr_args = c_parser_expr_list (parser, 0);
     }
   attr = build_tree_list (attr_name, attr_args);
   if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
     c_parser_consume_token (parser);
   else
     {
       c_lex_string_translate = 1;
       c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
      "expected %<)%>");
       return attrs;
     }
   attrs = chainon (attrs, attr);
 }
      if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
 c_parser_consume_token (parser);
      else
 {
   c_lex_string_translate = 1;
   c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
         "expected %<)%>");
   return attrs;
 }
      if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
 c_parser_consume_token (parser);
      else
 {
   c_lex_string_translate = 1;
   c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
         "expected %<)%>");
   return attrs;
 }
      c_lex_string_translate = 1;
    }
  return attrs;
}
