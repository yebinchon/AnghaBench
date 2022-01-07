
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_15__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ RID_ASM ;
 scalar_t__ RID_LABEL ;
 scalar_t__ RID_NAMESPACE ;
 scalar_t__ RID_USING ;
 TYPE_1__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_asm_definition (TYPE_2__*) ;
 int cp_parser_commit_to_tentative_parse (TYPE_2__*) ;
 scalar_t__ cp_parser_extension_opt (TYPE_2__*,int*) ;
 int cp_parser_label_declaration (TYPE_2__*) ;
 int cp_parser_namespace_alias_definition (TYPE_2__*) ;
 int cp_parser_simple_declaration (TYPE_2__*,int) ;
 int cp_parser_using_declaration (TYPE_2__*,int) ;
 int cp_parser_using_directive (TYPE_2__*) ;
 int pedantic ;

__attribute__((used)) static void
cp_parser_block_declaration (cp_parser *parser,
        bool statement_p)
{
  cp_token *token1;
  int saved_pedantic;


  if (cp_parser_extension_opt (parser, &saved_pedantic))
    {

      cp_parser_block_declaration (parser, statement_p);

      pedantic = saved_pedantic;

      return;
    }



  token1 = cp_lexer_peek_token (parser->lexer);


  if (token1->keyword == RID_ASM)
    {
      if (statement_p)
 cp_parser_commit_to_tentative_parse (parser);
      cp_parser_asm_definition (parser);
    }


  else if (token1->keyword == RID_NAMESPACE)
    cp_parser_namespace_alias_definition (parser);


  else if (token1->keyword == RID_USING)
    {
      cp_token *token2;

      if (statement_p)
 cp_parser_commit_to_tentative_parse (parser);


      token2 = cp_lexer_peek_nth_token (parser->lexer, 2);
      if (token2->keyword == RID_NAMESPACE)
 cp_parser_using_directive (parser);

      else
 cp_parser_using_declaration (parser,
                                  0);
    }

  else if (token1->keyword == RID_LABEL)
    {
      if (statement_p)
 cp_parser_commit_to_tentative_parse (parser);
      cp_parser_label_declaration (parser);
    }

  else
    cp_parser_simple_declaration (parser, !statement_p);
}
