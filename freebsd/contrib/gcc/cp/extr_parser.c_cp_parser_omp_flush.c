
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cp_token ;
struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_OPEN_PAREN ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_omp_var_list (TYPE_1__*,int ,int *) ;
 int cp_parser_require_pragma_eol (TYPE_1__*,int *) ;
 int finish_omp_flush () ;

__attribute__((used)) static void
cp_parser_omp_flush (cp_parser *parser, cp_token *pragma_tok)
{
  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_PAREN))
    (void) cp_parser_omp_var_list (parser, 0, ((void*)0));
  cp_parser_require_pragma_eol (parser, pragma_tok);

  finish_omp_flush ();
}
