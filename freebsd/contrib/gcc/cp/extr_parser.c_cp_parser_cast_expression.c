
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int tree ;
struct TYPE_12__ {char* type_definition_forbidden_message; int in_type_id_in_expr_p; int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_BRACE ;
 int CPP_OPEN_PAREN ;
 int NULL_TREE ;
 int OPT_Wold_style_cast ;
 int VOID_TYPE_P (int ) ;
 int build_c_cast (int ,int ) ;
 int cast_valid_in_integral_constant_expression_p (int ) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_lexer_rollback_tokens (int ) ;
 int cp_lexer_save_tokens (int ) ;
 int cp_parser_error_occurred (TYPE_1__*) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_1__*,char*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_simulate_error (TYPE_1__*) ;
 scalar_t__ cp_parser_skip_to_closing_parenthesis (TYPE_1__*,int,int,int) ;
 int cp_parser_type_id (TYPE_1__*) ;
 int cp_parser_unary_expression (TYPE_1__*,int,int) ;
 scalar_t__ current_lang_name ;
 int error_mark_node ;
 int in_system_header ;
 scalar_t__ lang_name_c ;
 scalar_t__ warn_old_style_cast ;
 int warning (int ,char*) ;

__attribute__((used)) static tree
cp_parser_cast_expression (cp_parser *parser, bool address_p, bool cast_p)
{

  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_PAREN))
    {
      tree type = NULL_TREE;
      tree expr = NULL_TREE;
      bool compound_literal_p;
      const char *saved_message;




      cp_parser_parse_tentatively (parser);

      saved_message = parser->type_definition_forbidden_message;
      parser->type_definition_forbidden_message
 = "types may not be defined in casts";

      cp_lexer_consume_token (parser->lexer);
      cp_lexer_save_tokens (parser->lexer);



      compound_literal_p
 = (cp_parser_skip_to_closing_parenthesis (parser, 0, 0,
                          1)
    && cp_lexer_next_token_is (parser->lexer, CPP_OPEN_BRACE));

      cp_lexer_rollback_tokens (parser->lexer);



      if (compound_literal_p)
 cp_parser_simulate_error (parser);
      else
 {
   bool saved_in_type_id_in_expr_p = parser->in_type_id_in_expr_p;
   parser->in_type_id_in_expr_p = 1;

   type = cp_parser_type_id (parser);

   cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");
   parser->in_type_id_in_expr_p = saved_in_type_id_in_expr_p;
 }


      parser->type_definition_forbidden_message = saved_message;





      if (!cp_parser_error_occurred (parser))
 expr = cp_parser_cast_expression (parser,
                     0,
                  1);

      if (cp_parser_parse_definitely (parser))
 {

   if (warn_old_style_cast
       && !in_system_header
       && !VOID_TYPE_P (type)
       && current_lang_name != lang_name_c)
     warning (OPT_Wold_style_cast, "use of old-style cast");



   if (!cast_valid_in_integral_constant_expression_p (type)
       && (cp_parser_non_integral_constant_expression
    (parser,
     "a cast to a type other than an integral or "
     "enumeration type")))
     return error_mark_node;


   expr = build_c_cast (type, expr);
   return expr;
 }
    }



  return cp_parser_unary_expression (parser, address_p, cast_p);
}
