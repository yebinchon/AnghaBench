
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ special_function_kind ;
struct TYPE_25__ {scalar_t__ type; int location; } ;
typedef TYPE_1__ cp_token ;
typedef scalar_t__ cp_parser_declarator_kind ;
struct TYPE_26__ {int default_arg_ok_p; int in_declarator_p; unsigned int num_template_parameter_lists; int in_type_id_in_expr_p; scalar_t__ scope; int in_function_body; int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_parameter_declarator ;
struct TYPE_27__ {scalar_t__ kind; int id_loc; } ;
typedef TYPE_3__ cp_declarator ;
typedef int cp_cv_quals ;


 scalar_t__ BIT_NOT_EXPR ;
 scalar_t__ BLOCKDEF ;
 scalar_t__ CLASSTYPE_USE_TEMPLATE (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_CLOSE_SQUARE ;
 scalar_t__ CPP_OPEN_PAREN ;
 scalar_t__ CPP_OPEN_SQUARE ;
 scalar_t__ CP_PARSER_DECLARATOR_BLOCK ;
 scalar_t__ CP_PARSER_DECLARATOR_EITHER ;
 scalar_t__ CP_PARSER_DECLARATOR_NAMED ;
 int DECL_NAME (int ) ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ IDENTIFIER_TYPENAME_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE ;
 int TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 char* TYPE_IDENTIFIER (scalar_t__) ;
 int TYPE_TI_TEMPLATE (scalar_t__) ;
 int TYPE_UNQUALIFIED ;
 int TYPE_WAS_ANONYMOUS (scalar_t__) ;
 scalar_t__ at_namespace_scope_p () ;
 scalar_t__ cdk_id ;
 scalar_t__ constructor_name (scalar_t__) ;
 scalar_t__ constructor_name_p (scalar_t__,scalar_t__) ;
 TYPE_3__* cp_error_declarator ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_constant_expression (TYPE_2__*,int,int*) ;
 int cp_parser_cv_qualifier_seq_opt (TYPE_2__*) ;
 TYPE_3__* cp_parser_declarator (TYPE_2__*,scalar_t__,int*,int *,int) ;
 scalar_t__ cp_parser_declarator_id (TYPE_2__*,int) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 scalar_t__ cp_parser_exception_specification_opt (TYPE_2__*) ;
 int * cp_parser_parameter_declaration_clause (TYPE_2__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 int cp_parser_require (TYPE_2__*,scalar_t__,char*) ;
 scalar_t__ current_class_type ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_non_dependent_expr (scalar_t__) ;
 scalar_t__ get_scope_of_declarator (TYPE_3__*) ;
 int inform (char*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 TYPE_3__* make_array_declarator (TYPE_3__*,scalar_t__) ;
 TYPE_3__* make_call_declarator (TYPE_3__*,int *,int ,scalar_t__) ;
 TYPE_3__* make_id_declarator (scalar_t__,scalar_t__,scalar_t__) ;
 int pop_scope (scalar_t__) ;
 scalar_t__ push_scope (scalar_t__) ;
 scalar_t__ resolve_typename_type (scalar_t__,int) ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ sfk_constructor ;
 scalar_t__ sfk_conversion ;
 scalar_t__ sfk_destructor ;
 scalar_t__ sfk_none ;

__attribute__((used)) static cp_declarator *
cp_parser_direct_declarator (cp_parser* parser,
        cp_parser_declarator_kind dcl_kind,
        int* ctor_dtor_or_conv_p,
        bool member_p)
{
  cp_token *token;
  cp_declarator *declarator = ((void*)0);
  tree scope = NULL_TREE;
  bool saved_default_arg_ok_p = parser->default_arg_ok_p;
  bool saved_in_declarator_p = parser->in_declarator_p;
  bool first = 1;
  tree pushed_scope = NULL_TREE;

  while (1)
    {

      token = cp_lexer_peek_token (parser->lexer);
      if (token->type == CPP_OPEN_PAREN)
 {
   if (!first || dcl_kind != CP_PARSER_DECLARATOR_NAMED)
     {
       cp_parameter_declarator *params;
       unsigned saved_num_template_parameter_lists;







       if (!member_p)
  cp_parser_parse_tentatively (parser);


       cp_lexer_consume_token (parser->lexer);
       if (first)
  {


    parser->default_arg_ok_p = 0;
    parser->in_declarator_p = 1;
  }



       saved_num_template_parameter_lists
  = parser->num_template_parameter_lists;
       parser->num_template_parameter_lists = 0;


       params = cp_parser_parameter_declaration_clause (parser);

       parser->num_template_parameter_lists
  = saved_num_template_parameter_lists;



       if (member_p || cp_parser_parse_definitely (parser))
  {
    cp_cv_quals cv_quals;
    tree exception_specification;

    if (ctor_dtor_or_conv_p)
      *ctor_dtor_or_conv_p = *ctor_dtor_or_conv_p < 0;
    first = 0;

    cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");


    if (dcl_kind != BLOCKDEF)
      {

        cv_quals = cp_parser_cv_qualifier_seq_opt (parser);
      }
    else
      cv_quals = TYPE_UNQUALIFIED;



    exception_specification
      = cp_parser_exception_specification_opt (parser);


    declarator = make_call_declarator (declarator,
           params,
           cv_quals,
           exception_specification);



    parser->default_arg_ok_p = 0;


    continue;
  }
     }



   if (first)
     {
       bool saved_in_type_id_in_expr_p;

       parser->default_arg_ok_p = saved_default_arg_ok_p;
       parser->in_declarator_p = saved_in_declarator_p;


       cp_lexer_consume_token (parser->lexer);

       saved_in_type_id_in_expr_p = parser->in_type_id_in_expr_p;
       parser->in_type_id_in_expr_p = 1;
       declarator
  = cp_parser_declarator (parser, dcl_kind, ctor_dtor_or_conv_p,
                         ((void*)0),
     member_p);
       parser->in_type_id_in_expr_p = saved_in_type_id_in_expr_p;
       first = 0;

       if (!cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'"))
  declarator = cp_error_declarator;
       if (declarator == cp_error_declarator)
  break;

       goto handle_declarator;
     }

   else
     break;
 }
      else if ((!first || dcl_kind != CP_PARSER_DECLARATOR_NAMED)
        && token->type == CPP_OPEN_SQUARE)
 {

   tree bounds;

   if (ctor_dtor_or_conv_p)
     *ctor_dtor_or_conv_p = 0;

   first = 0;
   parser->default_arg_ok_p = 0;
   parser->in_declarator_p = 1;

   cp_lexer_consume_token (parser->lexer);

   token = cp_lexer_peek_token (parser->lexer);


   if (token->type != CPP_CLOSE_SQUARE)
     {
       bool non_constant_p;

       bounds
  = cp_parser_constant_expression (parser,
                              1,
       &non_constant_p);
       if (!non_constant_p)
  bounds = fold_non_dependent_expr (bounds);



       else if (!parser->in_function_body)
  {
    error ("array bound is not an integer constant");
    bounds = error_mark_node;
  }
     }
   else
     bounds = NULL_TREE;

   if (!cp_parser_require (parser, CPP_CLOSE_SQUARE, "`]'"))
     {
       declarator = cp_error_declarator;
       break;
     }

   declarator = make_array_declarator (declarator, bounds);
 }

      else if (first && (dcl_kind == CP_PARSER_DECLARATOR_NAMED
    || dcl_kind == CP_PARSER_DECLARATOR_EITHER))

 {
   tree qualifying_scope;
   tree unqualified_name;
   special_function_kind sfk;
   bool abstract_ok;


   abstract_ok = (dcl_kind == CP_PARSER_DECLARATOR_EITHER);
   if (abstract_ok)
     cp_parser_parse_tentatively (parser);
   unqualified_name
     = cp_parser_declarator_id (parser, abstract_ok);
   qualifying_scope = parser->scope;
   if (abstract_ok)
     {
       if (!cp_parser_parse_definitely (parser))
  unqualified_name = error_mark_node;
       else if (unqualified_name
         && (qualifying_scope
      || (TREE_CODE (unqualified_name)
          != IDENTIFIER_NODE)))
  {
    cp_parser_error (parser, "expected unqualified-id");
    unqualified_name = error_mark_node;
  }
     }

   if (!unqualified_name)
     return ((void*)0);
   if (unqualified_name == error_mark_node)
     {
       declarator = cp_error_declarator;
       break;
     }

   if (qualifying_scope && at_namespace_scope_p ()
       && TREE_CODE (qualifying_scope) == TYPENAME_TYPE)
     {
       tree type;


       type = resolve_typename_type (qualifying_scope,
                            0);

       if (type == error_mark_node)
  error ("%<%T::%D%> is not a type",
         TYPE_CONTEXT (qualifying_scope),
         TYPE_IDENTIFIER (qualifying_scope));
       qualifying_scope = type;
     }

   sfk = sfk_none;
   if (unqualified_name)
     {
       tree class_type;

       if (qualifying_scope
    && CLASS_TYPE_P (qualifying_scope))
  class_type = qualifying_scope;
       else
  class_type = current_class_type;

       if (TREE_CODE (unqualified_name) == TYPE_DECL)
  {
    tree name_type = TREE_TYPE (unqualified_name);
    if (class_type && same_type_p (name_type, class_type))
      {
        if (qualifying_scope
     && CLASSTYPE_USE_TEMPLATE (name_type))
   {
     error ("invalid use of constructor as a template");
     inform ("use %<%T::%D%> instead of %<%T::%D%> to "
      "name the constructor in a qualified name",
      class_type,
      DECL_NAME (TYPE_TI_TEMPLATE (class_type)),
      class_type, name_type);
     declarator = cp_error_declarator;
     break;
   }
        else
   unqualified_name = constructor_name (class_type);
      }
    else
      {




        cp_parser_error (parser, "invalid declarator");
        declarator = cp_error_declarator;
        break;
      }
  }

       if (class_type)
  {
    if (TREE_CODE (unqualified_name) == BIT_NOT_EXPR)
      sfk = sfk_destructor;
    else if (IDENTIFIER_TYPENAME_P (unqualified_name))
      sfk = sfk_conversion;
    else if (


      !TYPE_WAS_ANONYMOUS (class_type)
      && constructor_name_p (unqualified_name,
        class_type))
      {
        unqualified_name = constructor_name (class_type);
        sfk = sfk_constructor;
      }

    if (ctor_dtor_or_conv_p && sfk != sfk_none)
      *ctor_dtor_or_conv_p = -1;
  }
     }
   declarator = make_id_declarator (qualifying_scope,
        unqualified_name,
        sfk);
   declarator->id_loc = token->location;

 handle_declarator:;
   scope = get_scope_of_declarator (declarator);
   if (scope)


     pushed_scope = push_scope (scope);
   parser->in_declarator_p = 1;
   if ((ctor_dtor_or_conv_p && *ctor_dtor_or_conv_p)
       || (declarator && declarator->kind == cdk_id))


     parser->default_arg_ok_p = saved_default_arg_ok_p;
   else
     parser->default_arg_ok_p = 0;

   first = 0;
 }

      else
 break;
    }




  if (!declarator && dcl_kind != CP_PARSER_DECLARATOR_BLOCK)
    cp_parser_error (parser, "expected declarator");


  if (pushed_scope)
    pop_scope (pushed_scope);

  parser->default_arg_ok_p = saved_default_arg_ok_p;
  parser->in_declarator_p = saved_in_declarator_p;

  return declarator;
}
