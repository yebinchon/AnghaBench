
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_6__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;







 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;

__attribute__((used)) static void
cp_parser_skip_to_end_of_block_or_statement (cp_parser* parser)
{
  int nesting_depth = 0;

  while (nesting_depth >= 0)
    {
      cp_token *token = cp_lexer_peek_token (parser->lexer);

      switch (token->type)
 {
 case 131:
 case 129:

   return;

 case 128:

   if (!nesting_depth)
     nesting_depth = -1;
   break;

 case 132:


   nesting_depth--;
   if (!nesting_depth)
     nesting_depth = -1;
   break;

 case 130:

   nesting_depth++;
   break;

 default:
   break;
 }


      cp_lexer_consume_token (parser->lexer);
    }
}
