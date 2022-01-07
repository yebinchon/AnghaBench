
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef char* tree ;
struct TYPE_18__ {int value; } ;
struct TYPE_19__ {int type; int keyword; TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_20__ {char* scope; char* object_scope; char* qualifying_scope; int lexer; } ;
typedef TYPE_3__ cp_parser ;
struct TYPE_17__ {int type; } ;


 int BIT_NOT_EXPR ;



 int CPP_OPEN_PAREN ;

 int DECL_IMPLICIT_TYPEDEF_P (char*) ;
 int DECL_SELF_REFERENCE_P (char*) ;
 int NAMESPACE_DECL ;
 char* NULL_TREE ;
 int RID_OPERATOR ;
 int TREE_CODE (char*) ;
 char* TREE_TYPE (char*) ;
 int TYPE_P (char*) ;
 char* build_nt (int ,char*) ;
 int check_dtor_name (char*,char*) ;
 int constructor_name_p (int ,char*) ;
 int cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is (int ,int const) ;
 TYPE_16__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 char* cp_parser_class_name (TYPE_3__*,int,int,int ,int,int,int) ;
 char* cp_parser_conversion_function_id (TYPE_3__*) ;
 int cp_parser_error (TYPE_3__*,char*) ;
 char* cp_parser_identifier (TYPE_3__*) ;
 char* cp_parser_operator_function_id (TYPE_3__*) ;
 int cp_parser_parse_definitely (TYPE_3__*) ;
 int cp_parser_parse_tentatively (TYPE_3__*) ;
 int cp_parser_simulate_error (TYPE_3__*) ;
 char* cp_parser_template_id (TYPE_3__*,int,int,int) ;
 int cp_parser_uncommitted_to_tentative_parse_p (TYPE_3__*) ;
 int error (char*,char*,...) ;
 char* error_mark_node ;
 int gcc_assert (int) ;
 int none_type ;

__attribute__((used)) static tree
cp_parser_unqualified_id (cp_parser* parser,
     bool template_keyword_p,
     bool check_dependency_p,
     bool declarator_p,
     bool optional_p)
{
  cp_token *token;


  token = cp_lexer_peek_token (parser->lexer);

  switch (token->type)
    {
    case 129:
      {
 tree id;



 cp_parser_parse_tentatively (parser);

 id = cp_parser_template_id (parser, template_keyword_p,
        check_dependency_p,
        declarator_p);

 if (cp_parser_parse_definitely (parser))
   return id;

 return cp_parser_identifier (parser);
      }

    case 128:
      return cp_parser_template_id (parser, template_keyword_p,
        check_dependency_p,
        declarator_p);

    case 131:
      {
 tree type_decl;
 tree qualifying_scope;
 tree object_scope;
 tree scope;
 bool done;


 cp_lexer_consume_token (parser->lexer);
 scope = parser->scope;
 object_scope = parser->object_scope;
 qualifying_scope = parser->qualifying_scope;


 if (scope == error_mark_node)
   {
     if (cp_lexer_next_token_is (parser->lexer, 129))
       cp_lexer_consume_token (parser->lexer);
     return error_mark_node;
   }
 if (scope && TREE_CODE (scope) == NAMESPACE_DECL)
   {
     if (!cp_parser_uncommitted_to_tentative_parse_p (parser))
       error ("scope %qT before %<~%> is not a class-name", scope);
     cp_parser_simulate_error (parser);
     if (cp_lexer_next_token_is (parser->lexer, 129))
       cp_lexer_consume_token (parser->lexer);
     return error_mark_node;
   }
 gcc_assert (!scope || TYPE_P (scope));


 token = cp_lexer_peek_token (parser->lexer);
 if (scope
     && token->type == 129
     && (cp_lexer_peek_nth_token (parser->lexer, 2)->type
  == CPP_OPEN_PAREN)
     && constructor_name_p (token->u.value, scope))
   {
     cp_lexer_consume_token (parser->lexer);
     return build_nt (BIT_NOT_EXPR, scope);
   }



 done = 0;
 type_decl = NULL_TREE;
 if (scope)
   {
     cp_parser_parse_tentatively (parser);
     type_decl = cp_parser_class_name (parser,
                                  0,
                                  0,
           none_type,
                                0,
                            0,
           declarator_p);
     if (cp_parser_parse_definitely (parser))
       done = 1;
   }

 if (!done && scope && qualifying_scope)
   {
     cp_parser_parse_tentatively (parser);
     parser->scope = qualifying_scope;
     parser->object_scope = NULL_TREE;
     parser->qualifying_scope = NULL_TREE;
     type_decl
       = cp_parser_class_name (parser,
                                 0,
                                 0,
          none_type,
                               0,
                           0,
          declarator_p);
     if (cp_parser_parse_definitely (parser))
       done = 1;
   }

 else if (!done && object_scope)
   {
     cp_parser_parse_tentatively (parser);
     parser->scope = object_scope;
     parser->object_scope = NULL_TREE;
     parser->qualifying_scope = NULL_TREE;
     type_decl
       = cp_parser_class_name (parser,
                                 0,
                                 0,
          none_type,
                               0,
                           0,
          declarator_p);
     if (cp_parser_parse_definitely (parser))
       done = 1;
   }

 if (!done)
   {
     parser->scope = NULL_TREE;
     parser->object_scope = NULL_TREE;
     parser->qualifying_scope = NULL_TREE;
     type_decl
       = cp_parser_class_name (parser,
                                 0,
                                 0,
          none_type,
                               0,
                           0,
          declarator_p);
   }




 if (type_decl == error_mark_node && scope)
   return build_nt (BIT_NOT_EXPR, scope);
 else if (type_decl == error_mark_node)
   return error_mark_node;


 if (declarator_p && scope && !check_dtor_name (scope, type_decl))
   {
     if (!cp_parser_uncommitted_to_tentative_parse_p (parser))
       error ("declaration of %<~%T%> as member of %qT",
       type_decl, scope);
     cp_parser_simulate_error (parser);
     return error_mark_node;
   }





 if (declarator_p
     && !DECL_IMPLICIT_TYPEDEF_P (type_decl)
     && !DECL_SELF_REFERENCE_P (type_decl)
     && !cp_parser_uncommitted_to_tentative_parse_p (parser))
   error ("typedef-name %qD used as destructor declarator",
   type_decl);

 return build_nt (BIT_NOT_EXPR, TREE_TYPE (type_decl));
      }

    case 130:
      if (token->keyword == RID_OPERATOR)
 {
   tree id;


   cp_parser_parse_tentatively (parser);

   id = cp_parser_template_id (parser, template_keyword_p,
                                 1,
          declarator_p);

   if (cp_parser_parse_definitely (parser))
     return id;


   cp_parser_parse_tentatively (parser);

   id = cp_parser_operator_function_id (parser);

   if (!cp_parser_parse_definitely (parser))
     id = cp_parser_conversion_function_id (parser);

   return id;
 }


    default:
      if (optional_p)
 return NULL_TREE;
      cp_parser_error (parser, "expected unqualified-id");
      return error_mark_node;
    }
}
