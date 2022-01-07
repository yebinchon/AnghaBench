
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int tag_scope ;
typedef enum tag_types { ____Placeholder_tag_types } tag_types ;
struct TYPE_20__ {scalar_t__ scope; int lexer; scalar_t__ num_template_parameter_lists; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ ATTR_FLAG_TYPE_IN_PLACE ;
 scalar_t__ CLASSTYPE_TEMPLATE_INSTANTIATION (scalar_t__) ;
 int CPP_SEMICOLON ;
 scalar_t__ DECL_SELF_REFERENCE_P (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 void* NULL_TREE ;
 int OPT_Wattributes ;
 int RID_ENUM ;
 int RID_TYPENAME ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ check_elaborated_type_specifier (int,scalar_t__,int) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 scalar_t__ cp_parser_attributes_opt (TYPE_1__*) ;
 int cp_parser_check_class_key (int,scalar_t__) ;
 int cp_parser_check_for_invalid_template_id (TYPE_1__*,scalar_t__) ;
 int cp_parser_check_template_parameters (TYPE_1__*,int ) ;
 int cp_parser_class_key (TYPE_1__*) ;
 scalar_t__ cp_parser_declares_only_class_p (TYPE_1__*) ;
 int cp_parser_diagnose_invalid_type_name (TYPE_1__*,scalar_t__,scalar_t__) ;
 int cp_parser_global_scope_opt (TYPE_1__*,int) ;
 scalar_t__ cp_parser_identifier (TYPE_1__*) ;
 scalar_t__ cp_parser_lookup_name (TYPE_1__*,scalar_t__,int,int,int,int,scalar_t__*) ;
 scalar_t__ cp_parser_make_typename_type (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ cp_parser_maybe_treat_template_as_class (scalar_t__,int) ;
 int cp_parser_nested_name_specifier (TYPE_1__*,int,int,int,int) ;
 int cp_parser_nested_name_specifier_opt (TYPE_1__*,int,int,int,int) ;
 scalar_t__ cp_parser_next_token_starts_class_definition_p (TYPE_1__*) ;
 int cp_parser_optional_template_keyword (TYPE_1__*) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 scalar_t__ cp_parser_template_id (TYPE_1__*,int,int,int) ;
 int cplus_decl_attributes (scalar_t__*,scalar_t__,int) ;
 int enum_type ;
 scalar_t__ error_mark_node ;
 scalar_t__ make_typename_type (scalar_t__,scalar_t__,int,int ) ;
 int none_type ;
 int pedwarn (char*) ;
 int processing_explicit_instantiation ;
 int processing_template_decl ;
 int tf_error ;
 int ts_current ;
 int ts_global ;
 int ts_within_enclosing_non_class ;
 int typename_type ;
 int warning (int ,char*) ;
 scalar_t__ xref_tag (int,scalar_t__,int ,int) ;

__attribute__((used)) static tree
cp_parser_elaborated_type_specifier (cp_parser* parser,
         bool is_friend,
         bool is_declaration)
{
  enum tag_types tag_type;
  tree identifier;
  tree type = NULL_TREE;
  tree attributes = NULL_TREE;


  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_ENUM))
    {

      cp_lexer_consume_token (parser->lexer);

      tag_type = enum_type;

      attributes = cp_parser_attributes_opt (parser);
    }

  else if (cp_lexer_next_token_is_keyword (parser->lexer,
        RID_TYPENAME))
    {

      cp_lexer_consume_token (parser->lexer);

      tag_type = typename_type;

      if (!processing_template_decl)
 pedwarn ("using %<typename%> outside of template");
    }

  else
    {
      tag_type = cp_parser_class_key (parser);
      if (tag_type == none_type)
 return error_mark_node;

      attributes = cp_parser_attributes_opt (parser);
    }


  cp_parser_global_scope_opt (parser,
                                   0);

  if (tag_type == typename_type)
    {
      if (!cp_parser_nested_name_specifier (parser,
                               1,
                               1,
                   1,
         is_declaration))
 return error_mark_node;
    }
  else



    cp_parser_nested_name_specifier_opt (parser,
                             1,
                             1,
                 1,
      is_declaration);


  if (tag_type != enum_type)
    {
      bool template_p = 0;
      tree decl;


      template_p = cp_parser_optional_template_keyword (parser);


      if (!template_p)
 cp_parser_parse_tentatively (parser);

      decl = cp_parser_template_id (parser, template_p,
                               1,
        is_declaration);


      if (!template_p && !cp_parser_parse_definitely (parser))
 ;



      else if (TREE_CODE (decl) == TEMPLATE_ID_EXPR
        && tag_type == typename_type)
 type = make_typename_type (parser->scope, decl,
       typename_type,
                    tf_error);
      else
 type = TREE_TYPE (decl);
    }

  if (!type)
    {
      identifier = cp_parser_identifier (parser);

      if (identifier == error_mark_node)
 {
   parser->scope = NULL_TREE;
   return error_mark_node;
 }


      if (tag_type == typename_type
   && TREE_CODE (parser->scope) != NAMESPACE_DECL)
 return cp_parser_make_typename_type (parser, parser->scope,
          identifier);

      if (parser->scope)
 {
   tree decl;
   tree ambiguous_decls;

   decl = cp_parser_lookup_name (parser, identifier,
     tag_type,
                     0,
                      0,
                          1,
     &ambiguous_decls);



   if (ambiguous_decls)
     return error_mark_node;
   decl = (cp_parser_maybe_treat_template_as_class
    (decl, is_friend
    && parser->num_template_parameter_lists));

   if (TREE_CODE (decl) != TYPE_DECL)
     {
       cp_parser_diagnose_invalid_type_name (parser,
          parser->scope,
          identifier);
       return error_mark_node;
     }

   if (TREE_CODE (TREE_TYPE (decl)) != TYPENAME_TYPE)
            {
              bool allow_template = (parser->num_template_parameter_lists
                        || DECL_SELF_REFERENCE_P (decl));
              type = check_elaborated_type_specifier (tag_type, decl,
                                                      allow_template);

              if (type == error_mark_node)
                return error_mark_node;
            }

   type = TREE_TYPE (decl);
 }
      else
 {
   tag_scope ts;
   bool template_p;

   if (is_friend)

     ts = ts_within_enclosing_non_class;
   else if (is_declaration
     && cp_lexer_next_token_is (parser->lexer,
           CPP_SEMICOLON))

     ts = ts_current;
   else
     ts = ts_global;

   template_p =
     (parser->num_template_parameter_lists
      && (cp_parser_next_token_starts_class_definition_p (parser)
   || cp_lexer_next_token_is (parser->lexer, CPP_SEMICOLON)));


   if (!cp_parser_check_template_parameters (parser,
                            0))
     return error_mark_node;
   type = xref_tag (tag_type, identifier, ts, template_p);
 }
    }

  if (type == error_mark_node)
    return error_mark_node;


  if (attributes)
    {
      if (TREE_CODE (type) == TYPENAME_TYPE)
 warning (OPT_Wattributes,
   "attributes ignored on uninstantiated type");
      else if (tag_type != enum_type && CLASSTYPE_TEMPLATE_INSTANTIATION (type)
        && ! processing_explicit_instantiation)
 warning (OPT_Wattributes,
   "attributes ignored on template instantiation");
      else if (is_declaration && cp_parser_declares_only_class_p (parser))
 cplus_decl_attributes (&type, attributes, (int) ATTR_FLAG_TYPE_IN_PLACE);
      else
 warning (OPT_Wattributes,
   "attributes ignored on elaborated-type-specifier that is not a forward declaration");
    }

  if (tag_type != enum_type)
    cp_parser_check_class_key (tag_type, type);



  cp_parser_check_for_invalid_template_id (parser, type);

  return type;
}
