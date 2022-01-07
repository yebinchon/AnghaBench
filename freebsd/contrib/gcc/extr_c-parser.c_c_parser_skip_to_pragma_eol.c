
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_1__ c_token ;
struct TYPE_9__ {int in_pragma; int error; } ;
typedef TYPE_2__ c_parser ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_PRAGMA_EOL ;
 int c_parser_consume_token (TYPE_2__*) ;
 TYPE_1__* c_parser_peek_token (TYPE_2__*) ;
 int c_parser_require (TYPE_2__*,scalar_t__,char*) ;
 int gcc_assert (int) ;

__attribute__((used)) static void
c_parser_skip_to_pragma_eol (c_parser *parser)
{
  gcc_assert (parser->in_pragma);
  parser->in_pragma = 0;

  if (!c_parser_require (parser, CPP_PRAGMA_EOL, "expected end of line"))
    while (1)
      {
 c_token *token = c_parser_peek_token (parser);
 if (token->type == CPP_EOF)
   break;
 if (token->type == CPP_PRAGMA_EOL)
   {
     c_parser_consume_token (parser);
     break;
   }
 c_parser_consume_token (parser);
      }

  parser->error = 0;
}
