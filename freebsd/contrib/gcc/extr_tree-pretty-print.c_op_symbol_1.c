
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
__attribute__((used)) static const char *
op_symbol_1 (enum tree_code code)
{
  switch (code)
    {
    case 161:
      return "=";

    case 139:
    case 140:
      return "||";

    case 142:
    case 143:
      return "&&";

    case 182:
      return "|";

    case 138:
    case 180:
      return "^";

    case 185:
    case 183:
      return "&";

    case 157:
      return "ord";
    case 132:
      return "unord";

    case 177:
      return "==";
    case 137:
      return "u==";

    case 158:
      return "!=";

    case 166:
      return "<";
    case 133:
      return "u<";

    case 170:
      return "<=";
    case 134:
      return "u<=";

    case 172:
      return ">";
    case 135:
      return "u>";

    case 173:
      return ">=";
    case 136:
      return "u>=";

    case 167:
      return "<>";

    case 168:
      return "<<";

    case 146:
      return ">>";

    case 169:
      return "r<<";

    case 147:
      return "r>>";

    case 131:
      return "v<<";

    case 130:
      return "v>>";

    case 156:
      return "+";

    case 150:
      return "r+";

    case 128:
      return "w+";

    case 129:
      return "w*";

    case 159:
    case 164:
      return "-";

    case 181:
      return "~";

    case 141:
      return "!";

    case 160:
    case 171:
      return "*";

    case 184:
      return "A*";

    case 162:
      return "M*";

    case 145:
    case 151:
      return "/";

    case 179:
      return "/[cl]";

    case 175:
      return "/[fl]";

    case 149:
      return "/[rd]";

    case 176:
      return "/[ex]";

    case 144:
      return "%";

    case 178:
      return "%[cl]";

    case 174:
      return "%[fl]";

    case 148:
      return "%[rd]";

    case 153:
      return " --";

    case 152:
      return " ++";

    case 155:
      return "-- ";

    case 154:
      return "++ ";

    case 165:
      return "max";

    case 163:
      return "min";

    default:
      return "<<< ??? >>>";
    }
}
