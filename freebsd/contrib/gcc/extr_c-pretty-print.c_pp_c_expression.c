
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_assignment_expression (int *,int ) ;
 int pp_c_additive_expression (int *,int ) ;
 int pp_c_and_expression (int *,int ) ;
 int pp_c_cast_expression (int *,int ) ;
 int pp_c_equality_expression (int *,int ) ;
 int pp_c_exclusive_or_expression (int *,int ) ;
 int pp_c_floating_constant (int *,int ) ;
 int pp_c_inclusive_or_expression (int *,int ) ;
 int pp_c_integer_constant (int *,int ) ;
 int pp_c_left_paren (int *) ;
 int pp_c_logical_and_expression (int *,int ) ;
 int pp_c_logical_or_expression (int *,int ) ;
 int pp_c_relational_expression (int *,int ) ;
 int pp_c_right_paren (int *) ;
 int pp_c_shift_expression (int *,int ) ;
 int pp_c_string_literal (int *,int ) ;
 int pp_c_unary_expression (int *,int ) ;
 int pp_conditional_expression (int *,int ) ;
 int pp_expression (int *,int ) ;
 int pp_multiplicative_expression (int *,int ) ;
 int pp_postfix_expression (int *,int ) ;
 int pp_primary_expression (int *,int ) ;
 int pp_separate_with (int *,char) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_c_expression (c_pretty_printer *pp, tree e)
{
  switch (TREE_CODE (e))
    {
    case 168:
      pp_c_integer_constant (pp, e);
      break;

    case 147:
      pp_c_floating_constant (pp, e);
      break;

    case 143:
      pp_c_string_literal (pp, e);
      break;

    case 172:
    case 175:
    case 130:
    case 182:
    case 154:
    case 146:
    case 178:
    case 167:
    case 179:
      pp_primary_expression (pp, e);
      break;

    case 151:
    case 152:
    case 196:
    case 191:
    case 188:
    case 190:
    case 189:
    case 128:
    case 155:
    case 131:
    case 164:
    case 136:
    case 133:
    case 132:
    case 135:
    case 134:
    case 198:
    case 183:
    case 186:
    case 129:
      pp_postfix_expression (pp, e);
      break;

    case 184:
    case 197:
    case 170:
    case 159:
    case 193:
    case 138:
    case 149:
    case 150:
    case 148:
    case 171:
      pp_c_unary_expression (pp, e);
      break;

    case 176:
    case 177:
    case 181:
    case 156:
      pp_c_cast_expression (pp, e);
      break;

    case 160:
    case 140:
    case 141:
      pp_multiplicative_expression (pp, e);
      break;

    case 165:
    case 145:
      pp_c_shift_expression (pp, e);
      break;

    case 163:
    case 173:
    case 166:
    case 174:
      pp_c_relational_expression (pp, e);
      break;

    case 195:
      pp_c_and_expression (pp, e);
      break;

    case 192:
      pp_c_exclusive_or_expression (pp, e);
      break;

    case 194:
      pp_c_inclusive_or_expression (pp, e);
      break;

    case 139:
      pp_c_logical_and_expression (pp, e);
      break;

    case 137:
      pp_c_logical_or_expression (pp, e);
      break;

    case 180:
    case 158:
      pp_c_equality_expression (pp, e);
      break;

    case 185:
      pp_conditional_expression (pp, e);
      break;

    case 153:
    case 162:
      pp_c_additive_expression (pp, e);
      break;

    case 161:
    case 169:
      pp_assignment_expression (pp, e);
      break;

    case 187:
      pp_c_left_paren (pp);
      pp_expression (pp, TREE_OPERAND (e, 0));
      pp_separate_with (pp, ',');
      pp_assignment_expression (pp, TREE_OPERAND (e, 1));
      pp_c_right_paren (pp);
      break;

    case 157:
    case 144:
      pp_expression (pp, TREE_OPERAND (e, 0));
      break;

    case 142:
      pp_postfix_expression (pp, TREE_OPERAND (e, 1));
      break;

    default:
      pp_unsupported_tree (pp, e);
      break;
    }
}
