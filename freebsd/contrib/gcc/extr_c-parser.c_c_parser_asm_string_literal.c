
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {int value; } ;


 int CPP_STRING ;
 int CPP_WSTRING ;
 int NULL_TREE ;
 int build_string (int,char*) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int error (char*) ;

__attribute__((used)) static tree
c_parser_asm_string_literal (c_parser *parser)
{
  tree str;
  if (c_parser_next_token_is (parser, CPP_STRING))
    {
      str = c_parser_peek_token (parser)->value;
      c_parser_consume_token (parser);
    }
  else if (c_parser_next_token_is (parser, CPP_WSTRING))
    {
      error ("wide string literal in %<asm%>");
      str = build_string (1, "");
      c_parser_consume_token (parser);
    }
  else
    {
      c_parser_error (parser, "expected string literal");
      str = NULL_TREE;
    }
  return str;
}
