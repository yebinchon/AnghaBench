
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ c_token ;
struct TYPE_8__ {int tokens_avail; TYPE_1__* tokens; } ;
typedef TYPE_2__ c_parser ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_PRAGMA_EOL ;
 int c_lex_one_token (TYPE_1__*,TYPE_2__*) ;
 int gcc_assert (int) ;

__attribute__((used)) static c_token *
c_parser_peek_2nd_token (c_parser *parser)
{
  if (parser->tokens_avail >= 2)
    return &parser->tokens[1];
  gcc_assert (parser->tokens_avail == 1);
  gcc_assert (parser->tokens[0].type != CPP_EOF);
  gcc_assert (parser->tokens[0].type != CPP_PRAGMA_EOL);

  parser->tokens_avail = 2;

  c_lex_one_token (&parser->tokens[1], parser);

  return &parser->tokens[1];
}
