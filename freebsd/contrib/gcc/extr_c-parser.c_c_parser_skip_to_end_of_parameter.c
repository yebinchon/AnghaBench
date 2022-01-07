
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ c_token ;
struct TYPE_8__ {int error; scalar_t__ in_pragma; } ;
typedef TYPE_2__ c_parser ;


 scalar_t__ CPP_CLOSE_BRACE ;
 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_CLOSE_SQUARE ;
 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_OPEN_BRACE ;
 scalar_t__ CPP_OPEN_PAREN ;
 scalar_t__ CPP_OPEN_SQUARE ;
 scalar_t__ CPP_PRAGMA_EOL ;
 scalar_t__ CPP_SEMICOLON ;
 int c_parser_consume_token (TYPE_2__*) ;
 TYPE_1__* c_parser_peek_token (TYPE_2__*) ;

__attribute__((used)) static void
c_parser_skip_to_end_of_parameter (c_parser *parser)
{
  unsigned nesting_depth = 0;

  while (1)
    {
      c_token *token = c_parser_peek_token (parser);
      if ((token->type == CPP_COMMA || token->type == CPP_SEMICOLON)
   && !nesting_depth)
 break;

      if (token->type == CPP_EOF)
 return;
      if (token->type == CPP_PRAGMA_EOL && parser->in_pragma)
 return;
      if (token->type == CPP_OPEN_BRACE
   || token->type == CPP_OPEN_PAREN
   || token->type == CPP_OPEN_SQUARE)
 ++nesting_depth;
      else if (token->type == CPP_CLOSE_BRACE
        || token->type == CPP_CLOSE_PAREN
        || token->type == CPP_CLOSE_SQUARE)
 {
   if (nesting_depth-- == 0)
     break;
 }

      c_parser_consume_token (parser);
    }
  parser->error = 0;
}
