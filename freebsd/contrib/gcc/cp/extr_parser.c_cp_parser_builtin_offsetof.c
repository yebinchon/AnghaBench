
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree ;
struct TYPE_10__ {int type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_11__ {int integral_constant_expression_p; int non_integral_constant_expression_p; int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_id_kind ;



 int const CPP_COMMA ;
 int const CPP_DEREF ;

 int const CPP_OPEN_PAREN ;

 int OFFSETOF_EXPR ;
 int build1 (int ,int ,int ) ;
 int build_pointer_type (int ) ;
 int build_static_cast (int ,int ) ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_postfix_dot_deref_expression (TYPE_2__*,int const,int ,int,int *) ;
 int cp_parser_postfix_open_square_expression (TYPE_2__*,int ,int) ;
 int cp_parser_require (TYPE_2__*,int const,char*) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_2__*,int,int,int) ;
 int cp_parser_type_id (TYPE_2__*) ;
 int error_mark_node ;
 int finish_offsetof (int ) ;
 int null_pointer_node ;
 scalar_t__ processing_template_decl ;
 int size_type_node ;

__attribute__((used)) static tree
cp_parser_builtin_offsetof (cp_parser *parser)
{
  int save_ice_p, save_non_ice_p;
  tree type, expr;
  cp_id_kind dummy;




  save_ice_p = parser->integral_constant_expression_p;
  save_non_ice_p = parser->non_integral_constant_expression_p;


  cp_lexer_consume_token (parser->lexer);

  cp_parser_require (parser, CPP_OPEN_PAREN, "`('");

  type = cp_parser_type_id (parser);

  cp_parser_require (parser, CPP_COMMA, "`,'");


  expr = build_static_cast (build_pointer_type (type), null_pointer_node);


  expr = cp_parser_postfix_dot_deref_expression (parser, CPP_DEREF, expr,
       1, &dummy);
  while (1)
    {
      cp_token *token = cp_lexer_peek_token (parser->lexer);
      switch (token->type)
 {
 case 128:

   expr = cp_parser_postfix_open_square_expression (parser, expr, 1);
   break;

 case 129:

   cp_lexer_consume_token (parser->lexer);
   expr = cp_parser_postfix_dot_deref_expression (parser, 129, expr,
        1, &dummy);
   break;

 case 130:

   cp_lexer_consume_token (parser->lexer);
   goto success;

 default:


   cp_parser_require (parser, 130, "`)'");
   cp_parser_skip_to_closing_parenthesis (parser, 1, 0, 1);
   expr = error_mark_node;
   goto failure;
 }
    }

 success:


  if (processing_template_decl)
    expr = build1 (OFFSETOF_EXPR, size_type_node, expr);
  else
    expr = finish_offsetof (expr);

 failure:
  parser->integral_constant_expression_p = save_ice_p;
  parser->non_integral_constant_expression_p = save_non_ice_p;

  return expr;
}
