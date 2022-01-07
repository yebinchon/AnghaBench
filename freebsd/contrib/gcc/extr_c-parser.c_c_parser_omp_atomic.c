
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_parser ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {scalar_t__ value; } ;


 int BIT_AND_EXPR ;
 int BIT_IOR_EXPR ;
 int BIT_XOR_EXPR ;
 int CPP_SEMICOLON ;


 int LSHIFT_EXPR ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int PLUS_EXPR ;




 int RSHIFT_EXPR ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TRUNC_DIV_EXPR ;
 int add_stmt (scalar_t__) ;
 scalar_t__ c_finish_omp_atomic (int,scalar_t__,scalar_t__) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 TYPE_3__ c_parser_expression (int *) ;
 TYPE_2__* c_parser_peek_token (int *) ;
 int c_parser_skip_to_end_of_block_or_statement (int *) ;
 int c_parser_skip_to_pragma_eol (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 TYPE_1__ c_parser_unary_expression (int *) ;
 scalar_t__ error_mark_node ;
 scalar_t__ integer_one_node ;

__attribute__((used)) static void
c_parser_omp_atomic (c_parser *parser)
{
  tree lhs, rhs;
  tree stmt;
  enum tree_code code;

  c_parser_skip_to_pragma_eol (parser);

  lhs = c_parser_unary_expression (parser).value;
  switch (TREE_CODE (lhs))
    {
    case 132:
    saw_error:
      c_parser_skip_to_end_of_block_or_statement (parser);
      return;

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
      switch (c_parser_peek_token (parser)->type)
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
   c_parser_error (parser,
     "invalid operator for %<#pragma omp atomic%>");
   goto saw_error;
 }

      c_parser_consume_token (parser);
      rhs = c_parser_expression (parser).value;
      break;
    }
  stmt = c_finish_omp_atomic (code, lhs, rhs);
  if (stmt != error_mark_node)
    add_stmt (stmt);
  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
}
