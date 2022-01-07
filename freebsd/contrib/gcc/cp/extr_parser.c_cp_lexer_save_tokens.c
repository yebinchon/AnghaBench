
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next_token; int saved_tokens; } ;
typedef TYPE_1__ cp_lexer ;


 int VEC_safe_push (int ,int ,int ,int ) ;
 int cp_lexer_debug_stream ;
 scalar_t__ cp_lexer_debugging_p (TYPE_1__*) ;
 int cp_token_position ;
 int fprintf (int ,char*) ;
 int heap ;

__attribute__((used)) static void
cp_lexer_save_tokens (cp_lexer* lexer)
{

  if (cp_lexer_debugging_p (lexer))
    fprintf (cp_lexer_debug_stream, "cp_lexer: saving tokens\n");

  VEC_safe_push (cp_token_position, heap,
   lexer->saved_tokens, lexer->next_token);
}
