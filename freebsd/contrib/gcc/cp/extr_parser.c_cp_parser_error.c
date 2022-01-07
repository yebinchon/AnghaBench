
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int value; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_12__ {int lexer; } ;
typedef TYPE_3__ cp_parser ;


 scalar_t__ CPP_KEYWORD ;
 scalar_t__ CPP_NAME ;
 scalar_t__ CPP_PRAGMA ;
 int c_parse_error (char const*,scalar_t__,int ) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 int cp_lexer_set_source_position_from_token (TYPE_2__*) ;
 int cp_parser_simulate_error (TYPE_3__*) ;
 int cp_parser_skip_to_pragma_eol (TYPE_3__*,TYPE_2__*) ;
 int error (char*) ;

__attribute__((used)) static void
cp_parser_error (cp_parser* parser, const char* message)
{
  if (!cp_parser_simulate_error (parser))
    {
      cp_token *token = cp_lexer_peek_token (parser->lexer);


      cp_lexer_set_source_position_from_token (token);

      if (token->type == CPP_PRAGMA)
 {
   error ("%<#pragma%> is not allowed here");
   cp_parser_skip_to_pragma_eol (parser, token);
   return;
 }

      c_parse_error (message,



       (token->type == CPP_KEYWORD ? CPP_NAME : token->type),
       token->u.value);
    }
}
