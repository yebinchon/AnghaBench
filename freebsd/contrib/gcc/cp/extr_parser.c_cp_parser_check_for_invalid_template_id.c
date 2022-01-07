
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ cp_token_position ;
struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_LESS ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_lexer_purge_tokens_after (int ,scalar_t__) ;
 scalar_t__ cp_lexer_token_position (int ,int) ;
 int cp_parser_enclosed_template_argument_list (TYPE_1__*) ;
 scalar_t__ cp_parser_uncommitted_to_tentative_parse_p (TYPE_1__*) ;
 int error (char*,...) ;

__attribute__((used)) static void
cp_parser_check_for_invalid_template_id (cp_parser* parser,
      tree type)
{
  cp_token_position start = 0;

  if (cp_lexer_next_token_is (parser->lexer, CPP_LESS))
    {
      if (TYPE_P (type))
 error ("%qT is not a template", type);
      else if (TREE_CODE (type) == IDENTIFIER_NODE)
 error ("%qE is not a template", type);
      else
 error ("invalid template-id");

      if (cp_parser_uncommitted_to_tentative_parse_p (parser))
 start = cp_lexer_token_position (parser->lexer, 1);

      cp_lexer_consume_token (parser->lexer);

      cp_parser_enclosed_template_argument_list (parser);


      if (start)
 cp_lexer_purge_tokens_after (parser->lexer, start);
    }
}
