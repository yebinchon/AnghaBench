
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_13__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ ATTR_FLAG_TYPE_IN_PLACE ;
 int CPP_CLOSE_BRACE ;
 int CPP_NAME ;
 int CPP_OPEN_BRACE ;
 scalar_t__ NULL_TREE ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (TYPE_1__*) ;
 scalar_t__ cp_parser_attributes_opt (TYPE_1__*) ;
 int cp_parser_check_type_definition (TYPE_1__*) ;
 int cp_parser_enumerator_list (TYPE_1__*,scalar_t__) ;
 scalar_t__ cp_parser_identifier (TYPE_1__*) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_simulate_error (TYPE_1__*) ;
 int cp_parser_skip_to_end_of_block_or_statement (TYPE_1__*) ;
 int cplus_decl_attributes (scalar_t__*,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 int finish_enum (scalar_t__) ;
 scalar_t__ make_anon_name () ;
 scalar_t__ start_enum (scalar_t__) ;

__attribute__((used)) static tree
cp_parser_enum_specifier (cp_parser* parser)
{
  tree identifier;
  tree type;
  tree attributes;



  cp_parser_parse_tentatively (parser);





  cp_lexer_consume_token (parser->lexer);

  attributes = cp_parser_attributes_opt (parser);

  if (cp_lexer_next_token_is (parser->lexer, CPP_NAME))
    identifier = cp_parser_identifier (parser);
  else
    identifier = make_anon_name ();


  if (!cp_lexer_next_token_is (parser->lexer, CPP_OPEN_BRACE))
    cp_parser_simulate_error (parser);

  if (!cp_parser_parse_definitely (parser))
    return NULL_TREE;


  if (!cp_parser_check_type_definition (parser))
    type = error_mark_node;
  else



    type = start_enum (identifier);


  cp_lexer_consume_token (parser->lexer);

  if (type == error_mark_node)
    {
      cp_parser_skip_to_end_of_block_or_statement (parser);
      return error_mark_node;
    }


  if (cp_lexer_next_token_is_not (parser->lexer, CPP_CLOSE_BRACE))
    cp_parser_enumerator_list (parser, type);


  cp_parser_require (parser, CPP_CLOSE_BRACE, "`}'");



  if (cp_parser_allow_gnu_extensions_p (parser))
    {
      tree trailing_attr = cp_parser_attributes_opt (parser);
      cplus_decl_attributes (&type,
        trailing_attr,
        (int) ATTR_FLAG_TYPE_IN_PLACE);
    }


  finish_enum (type);

  return type;
}
