
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int tree ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_18__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_id_kind ;


 int ADDR_EXPR ;
 scalar_t__ CPP_AND ;
 scalar_t__ CPP_NAME ;
 scalar_t__ CPP_NESTED_NAME_SPECIFIER ;
 scalar_t__ CPP_RSHIFT ;
 scalar_t__ CPP_SCOPE ;
 scalar_t__ CPP_TEMPLATE_ID ;
 int DECL_EXTERNAL_LINKAGE_P (int ) ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ OFFSET_REF ;
 int REFERENCE_REF_P (int ) ;
 scalar_t__ RID_OPERATOR ;
 scalar_t__ SCOPE_REF ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_PARM_INDEX ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ UNBOUND_CLASS_TEMPLATE ;
 scalar_t__ VAR_DECL ;
 int build_x_unary_op (int ,int ) ;
 int cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is (int ,scalar_t__) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_abort_tentative_parse (TYPE_2__*) ;
 int cp_parser_constant_expression (TYPE_2__*,int,int *) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 scalar_t__ cp_parser_error_occurred (TYPE_2__*) ;
 int cp_parser_id_expression (TYPE_2__*,int,int,int*,int,int) ;
 int cp_parser_lookup_name (TYPE_2__*,int ,int ,int,int,int,int *) ;
 int cp_parser_next_token_ends_template_argument_p (TYPE_2__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 int cp_parser_primary_expression (TYPE_2__*,int,int,int,int *) ;
 int cp_parser_simulate_error (TYPE_2__*) ;
 int cp_parser_type_id (TYPE_2__*) ;
 int error_mark_node ;
 int fold_non_dependent_expr (int ) ;
 int gcc_assert (int ) ;
 scalar_t__ is_overloaded_fn (int ) ;
 int none_type ;

__attribute__((used)) static tree
cp_parser_template_argument (cp_parser* parser)
{
  tree argument;
  bool template_p;
  bool address_p;
  bool maybe_type_id = 0;
  cp_token *token;
  cp_id_kind idk;
  cp_parser_parse_tentatively (parser);
  argument = cp_parser_type_id (parser);
  if (!cp_parser_error_occurred (parser)
      && cp_lexer_next_token_is (parser->lexer, CPP_RSHIFT))
    {
      maybe_type_id = 1;
      cp_parser_abort_tentative_parse (parser);
    }
  else
    {



      if (!cp_parser_next_token_ends_template_argument_p (parser))
 cp_parser_error (parser, "expected template-argument");

      if (cp_parser_parse_definitely (parser))
 return argument;
    }

  cp_parser_parse_tentatively (parser);

  argument = cp_parser_id_expression (parser,
                                 0,
                                 1,
          &template_p,
                           0,
                         0);


  if (!cp_parser_next_token_ends_template_argument_p (parser))
    cp_parser_error (parser, "expected template-argument");
  if (!cp_parser_error_occurred (parser))
    {




      if (TREE_CODE (argument) != TYPE_DECL)
 argument = cp_parser_lookup_name (parser, argument,
       none_type,
                       template_p,
                        0,
                            1,
                           ((void*)0));
      if (TREE_CODE (argument) != TEMPLATE_DECL
   && TREE_CODE (argument) != UNBOUND_CLASS_TEMPLATE)
 cp_parser_error (parser, "expected template-name");
    }
  if (cp_parser_parse_definitely (parser))
    return argument;
  if (cp_lexer_next_token_is (parser->lexer, CPP_NAME))
    {
      cp_parser_parse_tentatively (parser);
      argument = cp_parser_primary_expression (parser,
                         0,
                       0,
                               1,
            &idk);
      if (TREE_CODE (argument) != TEMPLATE_PARM_INDEX
   || !cp_parser_next_token_ends_template_argument_p (parser))
 cp_parser_simulate_error (parser);
      if (cp_parser_parse_definitely (parser))
 return argument;
    }



  address_p = cp_lexer_next_token_is (parser->lexer, CPP_AND);
  if (address_p)
    cp_lexer_consume_token (parser->lexer);

  token = cp_lexer_peek_token (parser->lexer);
  if (token->type == CPP_NAME
      || token->keyword == RID_OPERATOR
      || token->type == CPP_SCOPE
      || token->type == CPP_TEMPLATE_ID
      || token->type == CPP_NESTED_NAME_SPECIFIER)
    {
      cp_parser_parse_tentatively (parser);
      argument = cp_parser_primary_expression (parser,
            address_p,
                       0,
                               1,
            &idk);
      if (cp_parser_error_occurred (parser)
   || !cp_parser_next_token_ends_template_argument_p (parser))
 cp_parser_abort_tentative_parse (parser);
      else
 {
   if (TREE_CODE (argument) == INDIRECT_REF)
     {
       gcc_assert (REFERENCE_REF_P (argument));
       argument = TREE_OPERAND (argument, 0);
     }

   if (TREE_CODE (argument) == VAR_DECL)
     {



       if (!address_p && !DECL_EXTERNAL_LINKAGE_P (argument))
  cp_parser_simulate_error (parser);
     }
   else if (is_overloaded_fn (argument))



     ;
   else if (address_p
     && (TREE_CODE (argument) == OFFSET_REF
         || TREE_CODE (argument) == SCOPE_REF))

     ;
   else if (TREE_CODE (argument) == TEMPLATE_PARM_INDEX)
     ;
   else
     cp_parser_simulate_error (parser);

   if (cp_parser_parse_definitely (parser))
     {
       if (address_p)
  argument = build_x_unary_op (ADDR_EXPR, argument);
       return argument;
     }
 }
    }


  if (address_p)
    {
      cp_parser_error (parser, "invalid non-type template argument");
      return error_mark_node;
    }





  if (maybe_type_id)
    cp_parser_parse_tentatively (parser);
  argument = cp_parser_constant_expression (parser,
                                  0,
                            ((void*)0));
  argument = fold_non_dependent_expr (argument);
  if (!maybe_type_id)
    return argument;
  if (!cp_parser_next_token_ends_template_argument_p (parser))
    cp_parser_error (parser, "expected template-argument");
  if (cp_parser_parse_definitely (parser))
    return argument;




  return cp_parser_type_id (parser);
}
