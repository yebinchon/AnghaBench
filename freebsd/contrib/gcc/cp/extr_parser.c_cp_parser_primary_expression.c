
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int tree ;
struct TYPE_24__ {int value; } ;
struct TYPE_25__ {int type; TYPE_1__ u; int keyword; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_26__ {int greater_than_is_operator_p; int non_integral_constant_expression_p; int allow_non_integral_constant_expression_p; int integral_constant_expression_p; int scope; int local_variables_forbidden_p; int lexer; int in_function_body; int translate_strings_p; } ;
typedef TYPE_3__ cp_parser ;
typedef int cp_id_kind ;



 int const CPP_CLOSE_BRACE ;
 int const CPP_CLOSE_PAREN ;
 int const CPP_CLOSE_SQUARE ;
 int const CPP_COMMA ;
 int const CPP_DEREF ;
 int const CPP_DOT ;
 int const CPP_GREATER ;

 int const CPP_MINUS_MINUS ;



 int const CPP_OBJC_STRING ;
 int CPP_OPEN_BRACE ;

 int const CPP_OPEN_SQUARE ;
 int const CPP_PLUS_PLUS ;

 int const CPP_SEMICOLON ;





 int CP_ID_KIND_NONE ;
 int REAL_CST ;
 int SCOPE_REF ;
 int TEMPLATE_ID_EXPR ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_DECL ;
 int begin_stmt_expr () ;
 int boolean_false_node ;
 int boolean_true_node ;
 int build_x_va_arg (int ,int ) ;
 int c_dialect_objc () ;
 int check_for_out_of_scope_variable (int ) ;
 TYPE_2__* cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is (int ,int ) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 int cp_objc_property_reference_prefix (TYPE_3__*,int ) ;
 int cp_parser_allow_gnu_extensions_p (TYPE_3__*) ;
 int cp_parser_assignment_expression (TYPE_3__*,int) ;
 int cp_parser_block_literal_expr (TYPE_3__*) ;
 int cp_parser_builtin_offsetof (TYPE_3__*) ;
 int cp_parser_compound_statement (TYPE_3__*,int ,int,int) ;
 int cp_parser_error (TYPE_3__*,char const*) ;
 int cp_parser_expression (TYPE_3__*,int) ;
 int cp_parser_id_expression (TYPE_3__*,int,int,int*,int,int) ;
 int cp_parser_lookup_name (TYPE_3__*,int ,int ,int,int,int,int *) ;
 int cp_parser_non_integral_constant_expression (TYPE_3__*,char*) ;
 int cp_parser_objc_expression (TYPE_3__*) ;
 int cp_parser_objc_reference_expression (TYPE_3__*,int ) ;
 int cp_parser_require (TYPE_3__*,int const,char*) ;
 int cp_parser_skip_to_end_of_statement (TYPE_3__*) ;
 int cp_parser_string_literal (TYPE_3__*,int ,int) ;
 int cp_parser_type_id (TYPE_3__*) ;
 int error (char*,...) ;
 int error_mark_node ;
 int finish_fname (int ) ;
 int finish_id_expression (int ,int ,int ,int *,int ,int ,int *,int,int,int,int,char const**) ;
 int finish_parenthesized_expr (int ) ;
 int finish_stmt_expr (int ,int) ;
 int finish_this_expr () ;
 int flag_blocks ;
 int local_variable_p (int ) ;
 int none_type ;
 int null_node ;
 int objc_lookup_ivar (int ,int ) ;
 int pedantic ;
 int pedwarn (char*) ;

__attribute__((used)) static tree
cp_parser_primary_expression (cp_parser *parser,
         bool address_p,
         bool cast_p,
         bool template_arg_p,
         cp_id_kind *idk)
{
  cp_token *token;


  *idk = CP_ID_KIND_NONE;


  token = cp_lexer_peek_token (parser->lexer);
  switch (token->type)
    {

    case 141:
      if (flag_blocks)
 {
   tree expr = cp_parser_block_literal_expr (parser);
   return expr;
 }
      cp_parser_error (parser, "expected primary-expression");
      return error_mark_node;







    case 152:
    case 143:
    case 148:
      token = cp_lexer_consume_token (parser->lexer);



      if (TREE_CODE (token->u.value) == REAL_CST
   && parser->integral_constant_expression_p
   && pedantic)
 {



   if (cast_p)
     {
       cp_token *next_token;

       next_token = cp_lexer_peek_token (parser->lexer);
       if (

    next_token->type != CPP_COMMA

    && next_token->type != CPP_CLOSE_BRACE

    && next_token->type != CPP_SEMICOLON

    && next_token->type != CPP_CLOSE_PAREN

    && next_token->type != CPP_CLOSE_SQUARE

    && (next_token->type != CPP_GREATER
        || parser->greater_than_is_operator_p))
  cast_p = 0;
     }





   if (!cast_p)
     cp_parser_non_integral_constant_expression
       (parser, "floating-point literal");
 }
      return token->u.value;

    case 145:
    case 142:



      return cp_parser_string_literal (parser,
           parser->translate_strings_p,
           1);

    case 147:
      {
 tree expr;
 bool saved_greater_than_is_operator_p;


 cp_lexer_consume_token (parser->lexer);


 saved_greater_than_is_operator_p
   = parser->greater_than_is_operator_p;
 parser->greater_than_is_operator_p = 1;


 if (cp_parser_allow_gnu_extensions_p (parser)
     && cp_lexer_next_token_is (parser->lexer, CPP_OPEN_BRACE))
   {

     if (pedantic)
       pedwarn ("ISO C++ forbids braced-groups within expressions");







     if (!parser->in_function_body)
       error ("statement-expressions are allowed only inside functions");

     expr = begin_stmt_expr ();


     cp_parser_compound_statement (parser, expr, 0, 0);

     expr = finish_stmt_expr (expr, 0);
   }
 else
   {

     expr = cp_parser_expression (parser, cast_p);





     finish_parenthesized_expr (expr);
   }


 parser->greater_than_is_operator_p
   = saved_greater_than_is_operator_p;

 if (!cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'"))
   cp_parser_skip_to_end_of_statement (parser);

 return expr;
      }

    case 151:
      switch (token->keyword)
 {

 case 129:
   cp_lexer_consume_token (parser->lexer);
   return boolean_true_node;
 case 136:
   cp_lexer_consume_token (parser->lexer);
   return boolean_false_node;


 case 134:
   cp_lexer_consume_token (parser->lexer);
   return null_node;


 case 130:
   cp_lexer_consume_token (parser->lexer);
   if (parser->local_variables_forbidden_p)
     {
       error ("%<this%> may not be used in this context");
       return error_mark_node;
     }

   if (cp_parser_non_integral_constant_expression (parser,
         "`this'"))
     return error_mark_node;
   return finish_this_expr ();



 case 132:
   goto id_expression;

 case 135:
 case 131:
 case 137:







   token = cp_lexer_consume_token (parser->lexer);

   return finish_fname (token->u.value);

 case 128:
   {
     tree expression;
     tree type;



     cp_lexer_consume_token (parser->lexer);

     cp_parser_require (parser, 147, "`('");

     expression = cp_parser_assignment_expression (parser,
                    0);

     cp_parser_require (parser, CPP_COMMA, "`,'");

     type = cp_parser_type_id (parser);

     cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");


     if (cp_parser_non_integral_constant_expression (parser,
           "`va_arg'"))
       return error_mark_node;
     return build_x_va_arg (expression, type);
   }

 case 133:
   return cp_parser_builtin_offsetof (parser);


 case 140:
 case 139:
 case 138:
   return cp_parser_objc_expression (parser);

 default:
   cp_parser_error (parser, "expected primary-expression");
   return error_mark_node;
 }




    case 150:
    case 146:
    case 144:
    case 149:
      {
 tree id_expression;
 tree decl;
 const char *error_msg;
 bool template_p;
 bool done;

      id_expression:

 id_expression
   = cp_parser_id_expression (parser,
                                0,
                                1,
         &template_p,
                          0,
                        0);
 if (id_expression == error_mark_node)
   return error_mark_node;
 token = cp_lexer_peek_token (parser->lexer);
 done = (token->type != CPP_OPEN_SQUARE
  && token->type != 147
  && token->type != CPP_DOT
  && token->type != CPP_DEREF
  && token->type != CPP_PLUS_PLUS
  && token->type != CPP_MINUS_MINUS);



 if (TREE_CODE (id_expression) == TEMPLATE_ID_EXPR
   || TREE_CODE (id_expression) == TYPE_DECL)
   decl = id_expression;

 else
   {
     tree ambiguous_decls;

     decl = cp_parser_lookup_name (parser, id_expression,
       none_type,
       template_p,
                        0,
                            1,
       &ambiguous_decls);


     if (ambiguous_decls)
       return error_mark_node;


     if (TREE_CODE (decl) == TYPE_DECL
  && cp_objc_property_reference_prefix (parser, TREE_TYPE (decl)))
       return cp_parser_objc_reference_expression (parser, decl);



     decl = objc_lookup_ivar (decl, id_expression);



     if (TREE_CODE (decl) == SCOPE_REF)
       {
  return decl;
       }


     if (parser->local_variables_forbidden_p
  && local_variable_p (decl))
       {
  decl = check_for_out_of_scope_variable (decl);
  if (local_variable_p (decl))
    {
      error ("local variable %qD may not appear in this context",
      decl);
      return error_mark_node;
    }
       }
   }

 decl = (finish_id_expression
  (id_expression, decl, parser->scope,
   idk,
   parser->integral_constant_expression_p,
   parser->allow_non_integral_constant_expression_p,
   &parser->non_integral_constant_expression_p,
   template_p, done, address_p,
   template_arg_p,
   &error_msg));
 if (error_msg)
   cp_parser_error (parser, error_msg);
 return decl;
      }


    default:

      if (c_dialect_objc ()
   && (token->type == CPP_OPEN_SQUARE || token->type == CPP_OBJC_STRING))
 return cp_parser_objc_expression (parser);

      cp_parser_error (parser, "expected primary-expression");
      return error_mark_node;
    }
}
