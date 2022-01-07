
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_SEMICOLON ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_skip_to_end_of_statement (TYPE_1__*) ;

__attribute__((used)) static void
cp_parser_consume_semicolon_at_end_of_statement (cp_parser *parser)
{

  if (!cp_parser_require (parser, CPP_SEMICOLON, "`;'"))
    {


      cp_parser_skip_to_end_of_statement (parser);

      if (cp_lexer_next_token_is (parser->lexer, CPP_SEMICOLON))
 cp_lexer_consume_token (parser->lexer);
    }
}
