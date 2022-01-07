
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_10__ {TYPE_1__* next_token; TYPE_1__* last_token; int in_pragma; } ;
typedef TYPE_2__ cp_lexer ;


 scalar_t__ CPP_PRAGMA_EOL ;
 scalar_t__ CPP_PURGED ;
 int cp_lexer_debug_stream ;
 scalar_t__ cp_lexer_debugging_p (TYPE_2__*) ;
 int cp_lexer_print_token (int ,TYPE_1__*) ;
 int cp_lexer_set_source_position_from_token (TYPE_1__*) ;
 TYPE_1__ eof_token ;
 int fputs (char*,int ) ;
 int gcc_assert (int) ;
 int putc (char,int ) ;

__attribute__((used)) static cp_token *
cp_lexer_consume_token (cp_lexer* lexer)
{
  cp_token *token = lexer->next_token;

  gcc_assert (token != &eof_token);
  gcc_assert (!lexer->in_pragma || token->type != CPP_PRAGMA_EOL);

  do
    {
      lexer->next_token++;
      if (lexer->next_token == lexer->last_token)
 {
   lexer->next_token = (cp_token *)&eof_token;
   break;
 }

    }
  while (lexer->next_token->type == CPP_PURGED);

  cp_lexer_set_source_position_from_token (token);


  if (cp_lexer_debugging_p (lexer))
    {
      fputs ("cp_lexer: consuming token: ", cp_lexer_debug_stream);
      cp_lexer_print_token (cp_lexer_debug_stream, token);
      putc ('\n', cp_lexer_debug_stream);
    }

  return token;
}
