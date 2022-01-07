
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int RID_EXPORT ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 int cp_parser_template_declaration_after_export (TYPE_1__*,int) ;
 int warning (int ,char*) ;

__attribute__((used)) static void
cp_parser_template_declaration (cp_parser* parser, bool member_p)
{

  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_EXPORT))
    {

      cp_lexer_consume_token (parser->lexer);

      warning (0, "keyword %<export%> not implemented, and will be ignored");
    }

  cp_parser_template_declaration_after_export (parser, member_p);
}
