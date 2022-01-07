
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
typedef TYPE_1__ c_token ;
struct TYPE_10__ {int error; int in_pragma; } ;
typedef TYPE_2__ c_parser ;
 int c_parser_consume_pragma (TYPE_2__*) ;
 int c_parser_consume_token (TYPE_2__*) ;
 TYPE_1__* c_parser_peek_token (TYPE_2__*) ;
 int c_parser_skip_to_pragma_eol (TYPE_2__*) ;

__attribute__((used)) static void
c_parser_skip_to_end_of_block_or_statement (c_parser *parser)
{
  unsigned nesting_depth = 0;
  bool save_error = parser->error;

  while (1)
    {
      c_token *token;


      token = c_parser_peek_token (parser);

      switch (token->type)
 {
 case 132:
   return;

 case 129:
   if (parser->in_pragma)
     return;
   break;

 case 128:


   if (!nesting_depth)
     {

       c_parser_consume_token (parser);
       goto finished;
     }
   break;

 case 133:


   if (nesting_depth == 0 || --nesting_depth == 0)
     {
       c_parser_consume_token (parser);
       goto finished;
     }
   break;

 case 131:


   ++nesting_depth;
   break;

 case 130:






   c_parser_consume_pragma (parser);
   c_parser_skip_to_pragma_eol (parser);
   parser->error = save_error;
   continue;

 default:
   break;
 }

      c_parser_consume_token (parser);
    }

 finished:
  parser->error = 0;
}
