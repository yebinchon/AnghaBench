
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_6__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int BIT_AND_EXPR ;
 int BIT_IOR_EXPR ;
 int BIT_XOR_EXPR ;
 int ERROR_MARK ;
 int LSHIFT_EXPR ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int NOP_EXPR ;
 int PLUS_EXPR ;
 int RSHIFT_EXPR ;
 int TRUNC_DIV_EXPR ;
 int TRUNC_MOD_EXPR ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;

__attribute__((used)) static enum tree_code
cp_parser_assignment_operator_opt (cp_parser* parser)
{
  enum tree_code op;
  cp_token *token;


  token = cp_lexer_peek_token (parser->lexer);

  switch (token->type)
    {
    case 136:
      op = NOP_EXPR;
      break;

    case 132:
      op = MULT_EXPR;
      break;

    case 137:
      op = TRUNC_DIV_EXPR;
      break;

    case 133:
      op = TRUNC_MOD_EXPR;
      break;

    case 130:
      op = PLUS_EXPR;
      break;

    case 134:
      op = MINUS_EXPR;
      break;

    case 129:
      op = RSHIFT_EXPR;
      break;

    case 135:
      op = LSHIFT_EXPR;
      break;

    case 138:
      op = BIT_AND_EXPR;
      break;

    case 128:
      op = BIT_XOR_EXPR;
      break;

    case 131:
      op = BIT_IOR_EXPR;
      break;

    default:

      op = ERROR_MARK;
    }


  if (op != ERROR_MARK)
    cp_lexer_consume_token (parser->lexer);

  return op;
}
