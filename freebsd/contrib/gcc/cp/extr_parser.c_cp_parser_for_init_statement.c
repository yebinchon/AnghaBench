
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_SEMICOLON ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_expression_statement (TYPE_1__*,int) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_simple_declaration (TYPE_1__*,int) ;

__attribute__((used)) static void
cp_parser_for_init_statement (cp_parser* parser)
{






  if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
    {


      cp_parser_parse_tentatively (parser);

      cp_parser_simple_declaration (parser,
                                          0);


      if (cp_parser_parse_definitely (parser))
 return;
    }

  cp_parser_expression_statement (parser, 0);
}
