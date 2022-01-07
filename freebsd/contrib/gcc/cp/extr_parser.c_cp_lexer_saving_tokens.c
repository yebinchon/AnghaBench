
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_tokens; } ;
typedef TYPE_1__ cp_lexer ;


 scalar_t__ VEC_length (int ,int ) ;
 int cp_token_position ;

__attribute__((used)) static inline int
cp_lexer_saving_tokens (const cp_lexer* lexer)
{
  return VEC_length (cp_token_position, lexer->saved_tokens) != 0;
}
