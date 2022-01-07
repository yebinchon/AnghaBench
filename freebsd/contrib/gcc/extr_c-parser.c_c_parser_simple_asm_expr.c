
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int NULL_TREE ;
 int RID_ASM ;
 int c_lex_string_translate ;
 int c_parser_asm_string_literal (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,int *) ;
 int gcc_assert (int ) ;

__attribute__((used)) static tree
c_parser_simple_asm_expr (c_parser *parser)
{
  tree str;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_ASM));


  c_lex_string_translate = 0;
  c_parser_consume_token (parser);
  if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      c_lex_string_translate = 1;
      return NULL_TREE;
    }
  str = c_parser_asm_string_literal (parser);
  c_lex_string_translate = 1;
  if (!c_parser_require (parser, CPP_CLOSE_PAREN, "expected %<)%>"))
    {
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
      return NULL_TREE;
    }
  return str;
}
