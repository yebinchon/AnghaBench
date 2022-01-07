
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_7__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_uncommitted_to_tentative_parse_p (TYPE_2__*) ;

__attribute__((used)) static int
cp_parser_skip_to_closing_parenthesis (cp_parser *parser,
           bool recovering,
           bool or_comma,
           bool consume_paren)
{
  unsigned paren_depth = 0;
  unsigned brace_depth = 0;

  if (recovering && !or_comma
      && cp_parser_uncommitted_to_tentative_parse_p (parser))
    return 0;

  while (1)
    {
      cp_token * token = cp_lexer_peek_token (parser->lexer);

      switch (token->type)
 {
 case 132:
 case 129:

   return 0;

 case 128:

   if (!brace_depth)
     return 0;
   break;

 case 131:
   ++brace_depth;
   break;
 case 135:
   if (!brace_depth--)
     return 0;
   break;

 case 133:
   if (recovering && or_comma && !brace_depth && !paren_depth)
     return -1;
   break;

 case 130:
   if (!brace_depth)
     ++paren_depth;
   break;

 case 134:
   if (!brace_depth && !paren_depth--)
     {
       if (consume_paren)
  cp_lexer_consume_token (parser->lexer);
       return 1;
     }
   break;

 default:
   break;
 }


      cp_lexer_consume_token (parser->lexer);
    }
}
