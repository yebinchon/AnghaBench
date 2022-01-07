
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
struct TYPE_9__ {scalar_t__ scope; int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_abort_tentative_parse (TYPE_1__*) ;
 int cp_parser_diagnose_invalid_type_name (TYPE_1__*,scalar_t__,int ) ;
 int cp_parser_id_expression (TYPE_1__*,int,int,int *,int,int) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_skip_to_end_of_block_or_statement (TYPE_1__*) ;
 scalar_t__ dependent_type_p (scalar_t__) ;

__attribute__((used)) static bool
cp_parser_parse_and_diagnose_invalid_type_name (cp_parser *parser)
{
  tree id;

  cp_parser_parse_tentatively (parser);
  id = cp_parser_id_expression (parser,
                           0,
                           1,
                   ((void*)0),
                     1,
                   0);



  if (!cp_lexer_next_token_is (parser->lexer, CPP_NAME)
      || (parser->scope && TYPE_P (parser->scope)
   && dependent_type_p (parser->scope))
      || TREE_CODE (id) == TYPE_DECL)
    {
      cp_parser_abort_tentative_parse (parser);
      return 0;
    }
  if (!cp_parser_parse_definitely (parser))
    return 0;


  cp_parser_diagnose_invalid_type_name (parser, parser->scope, id);


  cp_parser_skip_to_end_of_block_or_statement (parser);
  return 1;
}
