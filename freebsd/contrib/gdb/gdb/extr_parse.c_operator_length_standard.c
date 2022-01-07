
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {int longconst; scalar_t__ opcode; } ;



 scalar_t__ BINOP_END ;

 int BYTES_TO_EXP_ELEM (int) ;
 int HOST_CHAR_BIT ;
 int error (char*) ;
 int longest_to_int (int ) ;

void
operator_length_standard (struct expression *expr, int endpos,
     int *oplenp, int *argsp)
{
  int oplen = 1;
  int args = 0;
  int i;

  if (endpos < 1)
    error ("?error in operator_length_standard");

  i = (int) expr->elts[endpos - 1].opcode;

  switch (i)
    {

    case 149:
      oplen = longest_to_int (expr->elts[endpos - 2].longconst);
      oplen = 5 + BYTES_TO_EXP_ELEM (oplen + 1);
      break;

    case 157:
    case 164:
    case 145:
      oplen = 4;
      break;

    case 146:
    case 166:
    case 158:
    case 150:
    case 160:
      oplen = 3;
      break;

    case 165:
      oplen = 1;
      args = 2;
      break;

    case 161:
    case 162:
      oplen = 3;
      args = 1 + longest_to_int (expr->elts[endpos - 2].longconst);
      break;

    case 154:
      oplen = 4;
      args = 1 + longest_to_int (expr->elts[endpos - 2].longconst);
      break;

    case 133:
    case 131:
      oplen = 3;
      break;

    case 170:
    case 137:
    case 132:
      oplen = 3;
      args = 1;
      break;

    case 139:
    case 138:
    case 136:
    case 135:
    case 134:
    case 130:
    case 129:
    case 128:
      oplen = 1;
      args = 1;
      break;

    case 159:
    case 143:
    case 144:
      args = 1;

    case 156:
    case 148:
    case 153:
    case 152:
    case 155:
    case 163:
      oplen = longest_to_int (expr->elts[endpos - 2].longconst);
      oplen = 4 + BYTES_TO_EXP_ELEM (oplen + 1);
      break;

    case 167:
      oplen = longest_to_int (expr->elts[endpos - 2].longconst);
      oplen = (oplen + HOST_CHAR_BIT - 1) / HOST_CHAR_BIT;
      oplen = 4 + BYTES_TO_EXP_ELEM (oplen);
      break;

    case 168:
      oplen = 4;
      args = longest_to_int (expr->elts[endpos - 2].longconst);
      args -= longest_to_int (expr->elts[endpos - 3].longconst);
      args += 1;
      break;

    case 142:
    case 141:
    case 140:
      args = 3;
      break;


    case 169:
      oplen = 3;
      args = 1 + longest_to_int (expr->elts[endpos - 2].longconst);
      break;

    case 171:
      oplen = 3;
      args = 2;
      break;


    case 147:
    case 151:
      oplen = 2;
      break;

    default:
      args = 1 + (i < (int) BINOP_END);
    }

  *oplenp = oplen;
  *argsp = args;
}
