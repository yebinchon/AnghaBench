
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_16__ {int type; int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_17__ {int lexer; void* qualifying_scope; void* object_scope; void* scope; } ;
typedef TYPE_2__ cp_parser ;




 scalar_t__ NULL_TREE ;
 int RID_OPERATOR ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 scalar_t__ cp_parser_global_scope_opt (TYPE_2__*,int) ;
 void* cp_parser_identifier (TYPE_2__*) ;
 scalar_t__ cp_parser_nested_name_specifier_opt (TYPE_2__*,int,int,int,int) ;
 int cp_parser_nth_token_starts_template_argument_list_p (TYPE_2__*,int) ;
 void* cp_parser_operator_function_id (TYPE_2__*) ;
 int cp_parser_optional_template_keyword (TYPE_2__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 void* cp_parser_template_id (TYPE_2__*,int,int,int) ;
 void* cp_parser_unqualified_id (TYPE_2__*,int,int,int,int) ;
 void* error_mark_node ;

__attribute__((used)) static tree
cp_parser_id_expression (cp_parser *parser,
    bool template_keyword_p,
    bool check_dependency_p,
    bool *template_p,
    bool declarator_p,
    bool optional_p)
{
  bool global_scope_p;
  bool nested_name_specifier_p;


  if (template_p)
    *template_p = template_keyword_p;


  global_scope_p
    = (cp_parser_global_scope_opt (parser, 0)
       != NULL_TREE);

  nested_name_specifier_p
    = (cp_parser_nested_name_specifier_opt (parser,
                                0,
         check_dependency_p,
                    0,
         declarator_p)
       != NULL_TREE);


  if (nested_name_specifier_p)
    {
      tree saved_scope;
      tree saved_object_scope;
      tree saved_qualifying_scope;
      tree unqualified_id;
      bool is_template;


      if (!template_p)
 template_p = &is_template;
      *template_p = cp_parser_optional_template_keyword (parser);


      saved_scope = parser->scope;
      saved_object_scope = parser->object_scope;
      saved_qualifying_scope = parser->qualifying_scope;

      unqualified_id = cp_parser_unqualified_id (parser, *template_p,
       check_dependency_p,
       declarator_p,
                      0);

      parser->scope = saved_scope;
      parser->object_scope = saved_object_scope;
      parser->qualifying_scope = saved_qualifying_scope;

      return unqualified_id;
    }


  else if (global_scope_p)
    {
      cp_token *token;
      tree id;


      token = cp_lexer_peek_token (parser->lexer);




      if (token->type == 128
   && !cp_parser_nth_token_starts_template_argument_list_p
        (parser, 2))
 return cp_parser_identifier (parser);

      cp_parser_parse_tentatively (parser);

      id = cp_parser_template_id (parser,
                             0,
                             1,
      declarator_p);

      if (cp_parser_parse_definitely (parser))
 return id;



      token = cp_lexer_peek_token (parser->lexer);

      switch (token->type)
 {
 case 128:
   return cp_parser_identifier (parser);

 case 129:
   if (token->keyword == RID_OPERATOR)
     return cp_parser_operator_function_id (parser);


 default:
   cp_parser_error (parser, "expected id-expression");
   return error_mark_node;
 }
    }
  else
    return cp_parser_unqualified_id (parser, template_keyword_p,
                                1,
         declarator_p,
         optional_p);
}
