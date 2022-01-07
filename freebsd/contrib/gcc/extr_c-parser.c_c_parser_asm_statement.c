
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {int value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_COLON ;
 int CPP_OPEN_PAREN ;
 int CPP_SEMICOLON ;
 int NULL_TREE ;
 int RID_ASM ;
 int RID_CONST ;
 int RID_RESTRICT ;
 int RID_VOLATILE ;
 int build_asm_expr (int ,int ,int ,int ,int) ;
 int build_asm_stmt (int ,int ) ;
 int c_lex_string_translate ;
 int c_parser_asm_clobbers (int *) ;
 int c_parser_asm_operands (int *,int) ;
 int c_parser_asm_string_literal (int *) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_to_end_of_block_or_statement (int *) ;
 int c_parser_skip_until_found (int *,int ,int *) ;
 int gcc_assert (scalar_t__) ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static tree
c_parser_asm_statement (c_parser *parser)
{
  tree quals, str, outputs, inputs, clobbers, ret;
  bool simple;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_ASM));
  c_parser_consume_token (parser);
  if (c_parser_next_token_is_keyword (parser, RID_VOLATILE))
    {
      quals = c_parser_peek_token (parser)->value;
      c_parser_consume_token (parser);
    }
  else if (c_parser_next_token_is_keyword (parser, RID_CONST)
    || c_parser_next_token_is_keyword (parser, RID_RESTRICT))
    {
      warning (0, "%E qualifier ignored on asm",
        c_parser_peek_token (parser)->value);
      quals = NULL_TREE;
      c_parser_consume_token (parser);
    }
  else
    quals = NULL_TREE;


  c_lex_string_translate = 0;
  if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      c_lex_string_translate = 1;
      return NULL_TREE;
    }
  str = c_parser_asm_string_literal (parser);
  if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
    {
      simple = 1;
      outputs = NULL_TREE;
      inputs = NULL_TREE;
      clobbers = NULL_TREE;
      goto done_asm;
    }
  if (!c_parser_require (parser, CPP_COLON, "expected %<:%> or %<)%>"))
    {
      c_lex_string_translate = 1;
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
      return NULL_TREE;
    }
  simple = 0;

  if (c_parser_next_token_is (parser, CPP_COLON)
      || c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
    outputs = NULL_TREE;
  else
    outputs = c_parser_asm_operands (parser, 0);
  if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
    {
      inputs = NULL_TREE;
      clobbers = NULL_TREE;
      goto done_asm;
    }
  if (!c_parser_require (parser, CPP_COLON, "expected %<:%> or %<)%>"))
    {
      c_lex_string_translate = 1;
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
      return NULL_TREE;
    }

  if (c_parser_next_token_is (parser, CPP_COLON)
      || c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
    inputs = NULL_TREE;
  else
    inputs = c_parser_asm_operands (parser, 1);
  if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
    {
      clobbers = NULL_TREE;
      goto done_asm;
    }
  if (!c_parser_require (parser, CPP_COLON, "expected %<:%> or %<)%>"))
    {
      c_lex_string_translate = 1;
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
      return NULL_TREE;
    }

  clobbers = c_parser_asm_clobbers (parser);
 done_asm:
  c_lex_string_translate = 1;
  if (!c_parser_require (parser, CPP_CLOSE_PAREN, "expected %<)%>"))
    {
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
      return NULL_TREE;
    }
  if (!c_parser_require (parser, CPP_SEMICOLON, "expected %<;%>"))
    c_parser_skip_to_end_of_block_or_statement (parser);
  ret = build_asm_stmt (quals, build_asm_expr (str, outputs, inputs,
            clobbers, simple));
  return ret;
}
