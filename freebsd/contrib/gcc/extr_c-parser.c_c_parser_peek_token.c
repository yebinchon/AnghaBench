
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int c_token ;
struct TYPE_4__ {int tokens_avail; int * tokens; } ;
typedef TYPE_1__ c_parser ;


 int c_lex_one_token (int *,TYPE_1__*) ;

__attribute__((used)) static inline c_token *
c_parser_peek_token (c_parser *parser)
{
  if (parser->tokens_avail == 0)
    {

      parser->tokens_avail = 1;

      c_lex_one_token (&parser->tokens[0], parser);

    }
  return &parser->tokens[0];
}
