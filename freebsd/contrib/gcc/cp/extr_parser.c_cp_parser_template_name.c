
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ cp_token_position ;
struct TYPE_13__ {scalar_t__ scope; int lexer; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 scalar_t__ CP_DECL_CONTEXT (int ) ;
 scalar_t__ DECL_FUNCTION_TEMPLATE_P (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 int RID_OPERATOR ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int constructor_name_p (scalar_t__,scalar_t__) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 int cp_lexer_purge_tokens_after (int ,scalar_t__) ;
 scalar_t__ cp_lexer_token_position (int ,int) ;
 int cp_parser_enclosed_template_argument_list (TYPE_1__*) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 scalar_t__ cp_parser_identifier (TYPE_1__*) ;
 scalar_t__ cp_parser_lookup_name (TYPE_1__*,scalar_t__,int ,int,int,int,int *) ;
 scalar_t__ cp_parser_nth_token_starts_template_argument_list_p (TYPE_1__*,int) ;
 scalar_t__ cp_parser_operator_function_id (TYPE_1__*) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 scalar_t__ cp_parser_simulate_error (TYPE_1__*) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_1__*,int,int,int) ;
 scalar_t__ dependent_type_p (scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int get_first_fn (scalar_t__) ;
 int inform (char*,scalar_t__,scalar_t__) ;
 scalar_t__ maybe_get_template_decl_from_type_decl (scalar_t__) ;
 int none_type ;
 scalar_t__ processing_template_decl ;

__attribute__((used)) static tree
cp_parser_template_name (cp_parser* parser,
    bool template_keyword_p,
    bool check_dependency_p,
    bool is_declaration,
    bool *is_identifier)
{
  tree identifier;
  tree decl;
  tree fns;



  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_OPERATOR))
    {


      cp_parser_parse_tentatively (parser);

      identifier = cp_parser_operator_function_id (parser);

      if (!cp_parser_parse_definitely (parser))
 {
   cp_parser_error (parser, "expected template-name");
   return error_mark_node;
 }
    }

  else
    identifier = cp_parser_identifier (parser);


  if (identifier == error_mark_node)
    return error_mark_node;
  if (processing_template_decl
      && cp_parser_nth_token_starts_template_argument_list_p (parser, 1))
    {







      if (is_declaration
   && !template_keyword_p
   && parser->scope && TYPE_P (parser->scope)
   && check_dependency_p
   && dependent_type_p (parser->scope)


   && !constructor_name_p (identifier, parser->scope))
 {
   cp_token_position start = 0;


   error ("non-template %qD used as template", identifier);
   inform ("use %<%T::template %D%> to indicate that it is a template",
    parser->scope, identifier);

   if (cp_parser_simulate_error (parser))
     start = cp_lexer_token_position (parser->lexer, 1);


   cp_lexer_consume_token (parser->lexer);
   cp_parser_enclosed_template_argument_list (parser);


   cp_parser_skip_to_closing_parenthesis (parser,
                      1,
                    1,
                         0);




   if (start)
     cp_lexer_purge_tokens_after (parser->lexer, start);
   if (is_identifier)
     *is_identifier = 1;
   return identifier;
 }





      if (template_keyword_p
   && (!parser->scope
       || (TYPE_P (parser->scope)
    && dependent_type_p (parser->scope))))
 return identifier;
    }


  decl = cp_parser_lookup_name (parser, identifier,
    none_type,
                    0,
                     0,
    check_dependency_p,
                        ((void*)0));
  decl = maybe_get_template_decl_from_type_decl (decl);


  if (TREE_CODE (decl) == TEMPLATE_DECL)
    ;
  else
    {
      tree fn = NULL_TREE;






      fns = BASELINK_P (decl) ? BASELINK_FUNCTIONS (decl) : decl;
      if (TREE_CODE (fns) == OVERLOAD)
 for (fn = fns; fn; fn = OVL_NEXT (fn))
   if (TREE_CODE (OVL_CURRENT (fn)) == TEMPLATE_DECL)
     break;

      if (!fn)
 {

   cp_parser_error (parser, "expected template-name");
   return error_mark_node;
 }
    }



  if (DECL_FUNCTION_TEMPLATE_P (decl) || !DECL_P (decl))
    {
      tree scope = CP_DECL_CONTEXT (get_first_fn (decl));
      if (TYPE_P (scope) && dependent_type_p (scope))
 return identifier;
    }

  return decl;
}
