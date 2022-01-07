
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int in_pragma; int tokens_avail; TYPE_1__* tokens; } ;
typedef TYPE_2__ c_parser ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ CPP_PRAGMA ;
 int gcc_assert (int) ;

__attribute__((used)) static void
c_parser_consume_pragma (c_parser *parser)
{
  gcc_assert (!parser->in_pragma);
  gcc_assert (parser->tokens_avail >= 1);
  gcc_assert (parser->tokens[0].type == CPP_PRAGMA);
  if (parser->tokens_avail == 2)
    parser->tokens[0] = parser->tokens[1];
  parser->tokens_avail--;
  parser->in_pragma = 1;
}
