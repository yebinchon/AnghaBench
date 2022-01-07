
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cp_token ;
struct TYPE_4__ {int * next_token; } ;
typedef TYPE_1__ cp_lexer ;


 int cp_lexer_debug_stream ;
 scalar_t__ cp_lexer_debugging_p (TYPE_1__*) ;
 int cp_lexer_print_token (int ,int *) ;
 int fputs (char*,int ) ;
 int putc (char,int ) ;

__attribute__((used)) static inline cp_token *
cp_lexer_peek_token (cp_lexer *lexer)
{
  if (cp_lexer_debugging_p (lexer))
    {
      fputs ("cp_lexer: peeking at token: ", cp_lexer_debug_stream);
      cp_lexer_print_token (cp_lexer_debug_stream, lexer->next_token);
      putc ('\n', cp_lexer_debug_stream);
    }
  return lexer->next_token;
}
