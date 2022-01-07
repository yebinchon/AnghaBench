
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int * tree ;
typedef int cp_token ;
struct TYPE_8__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int * c_finish_omp_critical (int *,int *) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int * cp_parser_identifier (TYPE_1__*) ;
 int * cp_parser_omp_structured_block (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_require_pragma_eol (TYPE_1__*,int *) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_1__*,int,int,int) ;
 int * error_mark_node ;

__attribute__((used)) static tree
cp_parser_omp_critical (cp_parser *parser, cp_token *pragma_tok)
{
  tree stmt, name = ((void*)0);

  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_PAREN))
    {
      cp_lexer_consume_token (parser->lexer);

      name = cp_parser_identifier (parser);

      if (name == error_mark_node
   || !cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'"))
 cp_parser_skip_to_closing_parenthesis (parser, 1,
                         0,
                              1);
      if (name == error_mark_node)
 name = ((void*)0);
    }
  cp_parser_require_pragma_eol (parser, pragma_tok);

  stmt = cp_parser_omp_structured_block (parser);
  return c_finish_omp_critical (stmt, name);
}
