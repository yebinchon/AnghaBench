
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ cp_token ;


 int ADDR_EXPR ;
 int BIT_NOT_EXPR ;






 int ERROR_MARK ;
 int INDIRECT_REF ;
 int NEGATE_EXPR ;
 int TRUTH_NOT_EXPR ;
 int UNARY_PLUS_EXPR ;

__attribute__((used)) static enum tree_code
cp_parser_unary_operator (cp_token* token)
{
  switch (token->type)
    {
    case 130:
      return INDIRECT_REF;

    case 133:
      return ADDR_EXPR;

    case 128:
      return UNARY_PLUS_EXPR;

    case 131:
      return NEGATE_EXPR;

    case 129:
      return TRUTH_NOT_EXPR;

    case 132:
      return BIT_NOT_EXPR;

    default:
      return ERROR_MARK;
    }
}
