
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * cp_token_position ;
struct TYPE_3__ {int * next_token; } ;
typedef TYPE_1__ cp_lexer ;


 int eof_token ;
 int gcc_assert (int) ;

__attribute__((used)) static inline cp_token_position
cp_lexer_token_position (cp_lexer *lexer, bool previous_p)
{
  gcc_assert (!previous_p || lexer->next_token != &eof_token);

  return lexer->next_token - previous_p;
}
