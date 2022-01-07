
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int saved_tokens; struct TYPE_4__* buffer; } ;
typedef TYPE_1__ cp_lexer ;


 int VEC_free (int ,int ,int ) ;
 int cp_token_position ;
 int ggc_free (TYPE_1__*) ;
 int heap ;

__attribute__((used)) static void
cp_lexer_destroy (cp_lexer *lexer)
{
  if (lexer->buffer)
    ggc_free (lexer->buffer);
  VEC_free (cp_token_position, heap, lexer->saved_tokens);
  ggc_free (lexer);
}
