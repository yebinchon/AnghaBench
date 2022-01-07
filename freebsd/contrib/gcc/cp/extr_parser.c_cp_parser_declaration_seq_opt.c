
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; scalar_t__ implicit_extern_c; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_8__ {int implicit_extern_c; int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ CPP_CLOSE_BRACE ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_PRAGMA ;
 scalar_t__ CPP_PRAGMA_EOL ;
 scalar_t__ CPP_SEMICOLON ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_declaration (TYPE_2__*) ;
 int cp_parser_pragma (TYPE_2__*,int ) ;
 int in_system_header ;
 int lang_name_c ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int pop_lang_context () ;
 int pragma_external ;
 int push_lang_context (int ) ;

__attribute__((used)) static void
cp_parser_declaration_seq_opt (cp_parser* parser)
{
  while (1)
    {
      cp_token *token;

      token = cp_lexer_peek_token (parser->lexer);

      if (token->type == CPP_CLOSE_BRACE
   || token->type == CPP_EOF
   || token->type == CPP_PRAGMA_EOL)
 break;

      if (token->type == CPP_SEMICOLON)
 {


   cp_lexer_consume_token (parser->lexer);
   if (pedantic && !in_system_header)
     pedwarn ("extra %<;%>");
   continue;
 }



      if (!parser->implicit_extern_c && token->implicit_extern_c)
 {
   push_lang_context (lang_name_c);
   parser->implicit_extern_c = 1;
 }
      else if (parser->implicit_extern_c && !token->implicit_extern_c)
 {
   pop_lang_context ();
   parser->implicit_extern_c = 0;
 }

      if (token->type == CPP_PRAGMA)
 {




   cp_parser_pragma (parser, pragma_external);
   continue;
 }


      cp_parser_declaration (parser);
    }
}
