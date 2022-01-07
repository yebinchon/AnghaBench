
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef int cp_lexer ;
struct TYPE_2__ {int type; } ;


 TYPE_1__* cp_lexer_peek_token (int *) ;

__attribute__((used)) static inline bool
cp_lexer_next_token_is (cp_lexer* lexer, enum cpp_ttype type)
{
  return cp_lexer_peek_token (lexer)->type == type;
}
