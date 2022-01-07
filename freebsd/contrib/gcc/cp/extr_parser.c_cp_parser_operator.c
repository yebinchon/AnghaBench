
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_7__ {int type; int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_8__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int ARRAY_REF ;
 int BIT_AND_EXPR ;
 int BIT_IOR_EXPR ;
 int BIT_NOT_EXPR ;
 int BIT_XOR_EXPR ;
 int CALL_EXPR ;
 int COMPONENT_REF ;
 int COMPOUND_EXPR ;



 int CPP_CLOSE_PAREN ;
 int CPP_CLOSE_SQUARE ;
 int DELETE_EXPR ;
 int EQ_EXPR ;
 int GE_EXPR ;
 int GT_EXPR ;
 int LE_EXPR ;
 int LSHIFT_EXPR ;
 int LT_EXPR ;
 int MEMBER_REF ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int NEW_EXPR ;
 int NE_EXPR ;
 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 int POSTINCREMENT_EXPR ;
 int PREDECREMENT_EXPR ;
 int RID_DELETE ;
 int RID_NEW ;
 int RSHIFT_EXPR ;
 int TRUNC_DIV_EXPR ;
 int TRUNC_MOD_EXPR ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_NOT_EXPR ;
 int TRUTH_ORIF_EXPR ;
 int VEC_DELETE_EXPR ;
 int VEC_NEW_EXPR ;
 scalar_t__ ansi_assopname (int) ;
 scalar_t__ ansi_opname (int) ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_require (TYPE_2__*,int ,char*) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static tree
cp_parser_operator (cp_parser* parser)
{
  tree id = NULL_TREE;
  cp_token *token;


  token = cp_lexer_peek_token (parser->lexer);

  switch (token->type)
    {
    case 153:
      {
 enum tree_code op;


 if (token->keyword == RID_NEW)
   op = NEW_EXPR;
 else if (token->keyword == RID_DELETE)
   op = DELETE_EXPR;
 else
   break;


 cp_lexer_consume_token (parser->lexer);


 token = cp_lexer_peek_token (parser->lexer);


 if (token->type == 138)
   {

     cp_lexer_consume_token (parser->lexer);

     cp_parser_require (parser, CPP_CLOSE_SQUARE, "`]'");
     id = ansi_opname (op == NEW_EXPR
         ? VEC_NEW_EXPR : VEC_DELETE_EXPR);
   }

 else
   id = ansi_opname (op);

 return id;
      }

    case 134:
      id = ansi_opname (PLUS_EXPR);
      break;

    case 148:
      id = ansi_opname (MINUS_EXPR);
      break;

    case 143:
      id = ansi_opname (MULT_EXPR);
      break;

    case 159:
      id = ansi_opname (TRUNC_DIV_EXPR);
      break;

    case 145:
      id = ansi_opname (TRUNC_MOD_EXPR);
      break;

    case 129:
      id = ansi_opname (BIT_XOR_EXPR);
      break;

    case 166:
      id = ansi_opname (BIT_AND_EXPR);
      break;

    case 137:
      id = ansi_opname (BIT_IOR_EXPR);
      break;

    case 162:
      id = ansi_opname (BIT_NOT_EXPR);
      break;

    case 141:
      id = ansi_opname (TRUTH_NOT_EXPR);
      break;

    case 157:
      id = ansi_assopname (NOP_EXPR);
      break;

    case 152:
      id = ansi_opname (LT_EXPR);
      break;

    case 155:
      id = ansi_opname (GT_EXPR);
      break;

    case 133:
      id = ansi_assopname (PLUS_EXPR);
      break;

    case 147:
      id = ansi_assopname (MINUS_EXPR);
      break;

    case 142:
      id = ansi_assopname (MULT_EXPR);
      break;

    case 158:
      id = ansi_assopname (TRUNC_DIV_EXPR);
      break;

    case 144:
      id = ansi_assopname (TRUNC_MOD_EXPR);
      break;

    case 128:
      id = ansi_assopname (BIT_XOR_EXPR);
      break;

    case 164:
      id = ansi_assopname (BIT_AND_EXPR);
      break;

    case 136:
      id = ansi_assopname (BIT_IOR_EXPR);
      break;

    case 150:
      id = ansi_opname (LSHIFT_EXPR);
      break;

    case 131:
      id = ansi_opname (RSHIFT_EXPR);
      break;

    case 149:
      id = ansi_assopname (LSHIFT_EXPR);
      break;

    case 130:
      id = ansi_assopname (RSHIFT_EXPR);
      break;

    case 156:
      id = ansi_opname (EQ_EXPR);
      break;

    case 140:
      id = ansi_opname (NE_EXPR);
      break;

    case 151:
      id = ansi_opname (LE_EXPR);
      break;

    case 154:
      id = ansi_opname (GE_EXPR);
      break;

    case 165:
      id = ansi_opname (TRUTH_ANDIF_EXPR);
      break;

    case 135:
      id = ansi_opname (TRUTH_ORIF_EXPR);
      break;

    case 132:
      id = ansi_opname (POSTINCREMENT_EXPR);
      break;

    case 146:
      id = ansi_opname (PREDECREMENT_EXPR);
      break;

    case 163:
      id = ansi_opname (COMPOUND_EXPR);
      break;

    case 160:
      id = ansi_opname (MEMBER_REF);
      break;

    case 161:
      id = ansi_opname (COMPONENT_REF);
      break;

    case 139:

      cp_lexer_consume_token (parser->lexer);

      cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");
      return ansi_opname (CALL_EXPR);

    case 138:

      cp_lexer_consume_token (parser->lexer);

      cp_parser_require (parser, CPP_CLOSE_SQUARE, "`]'");
      return ansi_opname (ARRAY_REF);

    default:

      break;
    }



  if (id)
    cp_lexer_consume_token (parser->lexer);

  else
    {
      cp_parser_error (parser, "expected operator");
      id = error_mark_node;
    }

  return id;
}
