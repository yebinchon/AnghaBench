
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
 int sprintf (char*,char*,int) ;

char *
op_name_standard (enum exp_opcode opcode)
{
  switch (opcode)
    {
    default:
      {
 static char buf[30];

 sprintf (buf, "<unknown %d>", opcode);
 return buf;
      }
    case 168:
      return "OP_NULL";
    case 213:
      return "BINOP_ADD";
    case 182:
      return "BINOP_SUB";
    case 188:
      return "BINOP_MUL";
    case 205:
      return "BINOP_DIV";
    case 185:
      return "BINOP_REM";
    case 189:
      return "BINOP_MOD";
    case 192:
      return "BINOP_LSH";
    case 183:
      return "BINOP_RSH";
    case 194:
      return "BINOP_LOGICAL_AND";
    case 193:
      return "BINOP_LOGICAL_OR";
    case 210:
      return "BINOP_BITWISE_AND";
    case 209:
      return "BINOP_BITWISE_IOR";
    case 208:
      return "BINOP_BITWISE_XOR";
    case 203:
      return "BINOP_EQUAL";
    case 187:
      return "BINOP_NOTEQUAL";
    case 195:
      return "BINOP_LESS";
    case 199:
      return "BINOP_GTR";
    case 196:
      return "BINOP_LEQ";
    case 200:
      return "BINOP_GEQ";
    case 184:
      return "BINOP_REPEAT";
    case 212:
      return "BINOP_ASSIGN";
    case 207:
      return "BINOP_COMMA";
    case 181:
      return "BINOP_SUBSCRIPT";
    case 179:
      return "MULTI_SUBSCRIPT";
    case 201:
      return "BINOP_EXP";
    case 190:
      return "BINOP_MIN";
    case 191:
      return "BINOP_MAX";
    case 160:
      return "STRUCTOP_MEMBER";
    case 159:
      return "STRUCTOP_MPTR";
    case 197:
      return "BINOP_INTDIV";
    case 211:
      return "BINOP_ASSIGN_MODIFY";
    case 180:
      return "BINOP_VAL";
    case 198:
      return "BINOP_INCL";
    case 202:
      return "BINOP_EXCL";
    case 206:
      return "BINOP_CONCAT";
    case 186:
      return "BINOP_RANGE";
    case 204:
      return "BINOP_END";
    case 156:
      return "TERNOP_COND";
    case 155:
      return "TERNOP_SLICE";
    case 154:
      return "TERNOP_SLICE_COUNT";
    case 170:
      return "OP_LONG";
    case 175:
      return "OP_DOUBLE";
    case 161:
      return "OP_VAR_VALUE";
    case 171:
      return "OP_LAST";
    case 166:
      return "OP_REGISTER";
    case 173:
      return "OP_INTERNALVAR";
    case 174:
      return "OP_FUNCALL";
    case 164:
      return "OP_STRING";
    case 177:
      return "OP_BITSTRING";
    case 178:
      return "OP_ARRAY";
    case 150:
      return "UNOP_CAST";
    case 140:
      return "UNOP_MEMVAL";
    case 138:
      return "UNOP_NEG";
    case 143:
      return "UNOP_LOGICAL_NOT";
    case 148:
      return "UNOP_COMPLEMENT";
    case 145:
      return "UNOP_IND";
    case 152:
      return "UNOP_ADDR";
    case 131:
      return "UNOP_PREINCREMENT";
    case 133:
      return "UNOP_POSTINCREMENT";
    case 132:
      return "UNOP_PREDECREMENT";
    case 134:
      return "UNOP_POSTDECREMENT";
    case 130:
      return "UNOP_SIZEOF";
    case 142:
      return "UNOP_LOWER";
    case 128:
      return "UNOP_UPPER";
    case 144:
      return "UNOP_LENGTH";
    case 135:
      return "UNOP_PLUS";
    case 151:
      return "UNOP_CAP";
    case 149:
      return "UNOP_CHR";
    case 136:
      return "UNOP_ORD";
    case 153:
      return "UNOP_ABS";
    case 147:
      return "UNOP_FLOAT";
    case 146:
      return "UNOP_HIGH";
    case 141:
      return "UNOP_MAX";
    case 139:
      return "UNOP_MIN";
    case 137:
      return "UNOP_ODD";
    case 129:
      return "UNOP_TRUNC";
    case 176:
      return "OP_BOOL";
    case 169:
      return "OP_M2_STRING";
    case 157:
      return "STRUCTOP_STRUCT";
    case 158:
      return "STRUCTOP_PTR";
    case 163:
      return "OP_THIS";
    case 167:
      return "OP_OBJC_SELF";
    case 165:
      return "OP_SCOPE";
    case 162:
      return "OP_TYPE";
    case 172:
      return "OP_LABELED";
    }
}
