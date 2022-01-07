
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {int value; } ;


 int CPP_NAME ;
 int CPP_SEMICOLON ;
 int RID_AT_ALIAS ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int gcc_assert (int ) ;
 int objc_declare_alias (int ,int ) ;

__attribute__((used)) static void
c_parser_objc_alias_declaration (c_parser *parser)
{
  tree id1, id2;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_AT_ALIAS));
  c_parser_consume_token (parser);
  if (c_parser_next_token_is_not (parser, CPP_NAME))
    {
      c_parser_error (parser, "expected identifier");
      c_parser_skip_until_found (parser, CPP_SEMICOLON, ((void*)0));
      return;
    }
  id1 = c_parser_peek_token (parser)->value;
  c_parser_consume_token (parser);
  if (c_parser_next_token_is_not (parser, CPP_NAME))
    {
      c_parser_error (parser, "expected identifier");
      c_parser_skip_until_found (parser, CPP_SEMICOLON, ((void*)0));
      return;
    }
  id2 = c_parser_peek_token (parser)->value;
  c_parser_consume_token (parser);
  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
  objc_declare_alias (id1, id2);
}
