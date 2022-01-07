
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_13__ {int lexer; } ;
typedef TYPE_3__ cp_parser ;
struct TYPE_14__ {scalar_t__ type; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_COMMA ;
 scalar_t__ CPP_NAME ;
 int CPP_OPEN_PAREN ;
 scalar_t__ NULL_TREE ;
 TYPE_2__* cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 TYPE_9__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_assignment_expression (TYPE_3__*,int) ;
 scalar_t__ cp_parser_constant_expression (TYPE_3__*,int,int*) ;
 int cp_parser_require (TYPE_3__*,int ,char*) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_3__*,int,int,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_non_dependent_expr (scalar_t__) ;
 scalar_t__ nreverse (scalar_t__) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
cp_parser_parenthesized_expression_list (cp_parser* parser,
      bool is_attribute_list,
      bool cast_p,
      bool *non_constant_p)
{
  tree expression_list = NULL_TREE;
  bool fold_expr_p = is_attribute_list;
  tree identifier = NULL_TREE;


  if (non_constant_p)
    *non_constant_p = 0;

  if (!cp_parser_require (parser, CPP_OPEN_PAREN, "`('"))
    return error_mark_node;


  if (cp_lexer_next_token_is_not (parser->lexer, CPP_CLOSE_PAREN))
    while (1)
      {
 tree expr;



 if (is_attribute_list
     && cp_lexer_peek_token (parser->lexer)->type == CPP_NAME)
   {
     cp_token *token;


     token = cp_lexer_consume_token (parser->lexer);

     identifier = token->u.value;
   }
 else
   {

     if (non_constant_p)
       {
  bool expr_non_constant_p;
  expr = (cp_parser_constant_expression
   (parser, 1,
    &expr_non_constant_p));
  if (expr_non_constant_p)
    *non_constant_p = 1;
       }
     else
       expr = cp_parser_assignment_expression (parser, cast_p);

     if (fold_expr_p)
       expr = fold_non_dependent_expr (expr);





     expression_list = tree_cons (NULL_TREE, expr, expression_list);

     if (expr == error_mark_node)
       goto skip_comma;
   }



 is_attribute_list = 0;

      get_comma:;

 if (cp_lexer_next_token_is_not (parser->lexer, CPP_COMMA))
   break;


 cp_lexer_consume_token (parser->lexer);
      }

  if (!cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'"))
    {
      int ending;

    skip_comma:;


      ending = cp_parser_skip_to_closing_parenthesis (parser,
                           1,
                         1,
                              1);
      if (ending < 0)
 goto get_comma;
      if (!ending)
 return error_mark_node;
    }


  expression_list = nreverse (expression_list);
  if (identifier)
    expression_list = tree_cons (NULL_TREE, identifier, expression_list);

  return expression_list;
}
