
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_6__ {int next_token; struct TYPE_6__* next; } ;
typedef TYPE_2__ cp_lexer ;


 int cp_lexer_destroy (TYPE_2__*) ;
 int cp_lexer_set_source_position_from_token (int ) ;

__attribute__((used)) static void
cp_parser_pop_lexer (cp_parser *parser)
{
  cp_lexer *lexer = parser->lexer;
  parser->lexer = lexer->next;
  cp_lexer_destroy (lexer);



  cp_lexer_set_source_position_from_token (parser->lexer->next_token);
}
