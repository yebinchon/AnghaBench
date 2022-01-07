
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_COMMA ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_enumerator_definition (TYPE_1__*,int ) ;
 int in_system_header ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;

__attribute__((used)) static void
cp_parser_enumerator_list (cp_parser* parser, tree type)
{
  while (1)
    {

      cp_parser_enumerator_definition (parser, type);



      if (cp_lexer_next_token_is_not (parser->lexer, CPP_COMMA))
 break;

      cp_lexer_consume_token (parser->lexer);

      if (cp_lexer_next_token_is (parser->lexer, CPP_CLOSE_BRACE))
 {
   if (pedantic && !in_system_header)
     pedwarn ("comma at end of enumerator list");
   break;
 }
    }
}
