
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cp_token ;
struct TYPE_10__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_11__ {int type; } ;


 int BIT_AND_EXPR ;
 int BIT_IOR_EXPR ;
 int BIT_XOR_EXPR ;
 int LSHIFT_EXPR ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int PLUS_EXPR ;




 int RSHIFT_EXPR ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TRUNC_DIV_EXPR ;
 int cp_lexer_consume_token (int ) ;
 TYPE_9__* cp_lexer_peek_token (int ) ;
 int cp_parser_consume_semicolon_at_end_of_statement (TYPE_1__*) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int cp_parser_expression (TYPE_1__*,int) ;
 int cp_parser_require_pragma_eol (TYPE_1__*,int *) ;
 int cp_parser_skip_to_end_of_block_or_statement (TYPE_1__*) ;
 int cp_parser_unary_expression (TYPE_1__*,int,int) ;
 int error_mark_node ;
 int finish_omp_atomic (int,int ,int ) ;
 int integer_one_node ;

__attribute__((used)) static void
cp_parser_omp_atomic (cp_parser *parser, cp_token *pragma_tok)
{
  tree lhs, rhs;
  enum tree_code code;

  cp_parser_require_pragma_eol (parser, pragma_tok);

  lhs = cp_parser_unary_expression (parser, 0,
                   0);
  switch (TREE_CODE (lhs))
    {
    case 132:
      goto saw_error;

    case 128:
    case 130:
      lhs = TREE_OPERAND (lhs, 0);
      code = PLUS_EXPR;
      rhs = integer_one_node;
      break;

    case 129:
    case 131:
      lhs = TREE_OPERAND (lhs, 0);
      code = MINUS_EXPR;
      rhs = integer_one_node;
      break;

    default:
      switch (cp_lexer_peek_token (parser->lexer)->type)
 {
 case 137:
   code = MULT_EXPR;
   break;
 case 140:
   code = TRUNC_DIV_EXPR;
   break;
 case 135:
   code = PLUS_EXPR;
   break;
 case 138:
   code = MINUS_EXPR;
   break;
 case 139:
   code = LSHIFT_EXPR;
   break;
 case 134:
   code = RSHIFT_EXPR;
   break;
 case 141:
   code = BIT_AND_EXPR;
   break;
 case 136:
   code = BIT_IOR_EXPR;
   break;
 case 133:
   code = BIT_XOR_EXPR;
   break;
 default:
   cp_parser_error (parser,
      "invalid operator for %<#pragma omp atomic%>");
   goto saw_error;
 }
      cp_lexer_consume_token (parser->lexer);

      rhs = cp_parser_expression (parser, 0);
      if (rhs == error_mark_node)
 goto saw_error;
      break;
    }
  finish_omp_atomic (code, lhs, rhs);
  cp_parser_consume_semicolon_at_end_of_statement (parser);
  return;

 saw_error:
  cp_parser_skip_to_end_of_block_or_statement (parser);
}
