
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum rid { ____Placeholder_rid } rid ;
typedef int cp_lexer ;
struct TYPE_2__ {int keyword; } ;


 TYPE_1__* cp_lexer_peek_token (int *) ;

__attribute__((used)) static inline bool
cp_lexer_next_token_is_keyword (cp_lexer* lexer, enum rid keyword)
{
  return cp_lexer_peek_token (lexer)->keyword == keyword;
}
