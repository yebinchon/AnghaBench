
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cp_token_cache ;
struct TYPE_5__ {TYPE_2__* lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_6__ {int next_token; struct TYPE_6__* next; } ;
typedef TYPE_2__ cp_lexer ;


 TYPE_2__* cp_lexer_new_from_tokens (int *) ;
 int cp_lexer_set_source_position_from_token (int ) ;

__attribute__((used)) static void
cp_parser_push_lexer_for_tokens (cp_parser *parser, cp_token_cache *cache)
{
  cp_lexer *lexer = cp_lexer_new_from_tokens (cache);
  lexer->next = parser->lexer;
  parser->lexer = lexer;



  cp_lexer_set_source_position_from_token (lexer->next_token);
}
