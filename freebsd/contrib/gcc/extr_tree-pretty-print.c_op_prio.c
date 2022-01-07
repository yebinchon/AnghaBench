
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
 int TREE_CODE (int *) ;

 int * TREE_OPERAND (int *,int ) ;
__attribute__((used)) static int
op_prio (tree op)
{
  if (op == ((void*)0))
    return 9999;

  switch (TREE_CODE (op))
    {
    case 146:
    case 196:
    case 205:
      return 1;

    case 169:
    case 179:
      return 2;

    case 195:
      return 3;

    case 139:
    case 140:
      return 4;

    case 142:
    case 143:
      return 5;

    case 203:
      return 6;

    case 201:
    case 138:
      return 7;

    case 204:
      return 8;

    case 192:
    case 166:
      return 9;

    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 175:
    case 163:
    case 132:
    case 174:
    case 178:
    case 182:
    case 183:
      return 10;

    case 176:
    case 149:
    case 177:
    case 150:
      return 11;

    case 128:
    case 162:
    case 172:
      return 12;

    case 129:
    case 193:
    case 168:
    case 145:
    case 199:
    case 185:
    case 152:
    case 157:
    case 191:
    case 144:
    case 198:
    case 184:
    case 151:
      return 13;

    case 141:
    case 202:
    case 160:
    case 161:
    case 158:
    case 159:
    case 167:
    case 208:
    case 170:
    case 180:
    case 209:
    case 186:
    case 164:
    case 194:
    case 187:
    case 190:
    case 189:
    case 188:
    case 147:
      return 14;

    case 200:
    case 206:
    case 207:
    case 197:
      return 15;


    case 171:
    case 173:
    case 210:
    case 156:
    case 181:
    case 155:
    case 154:
    case 153:
    case 131:
    case 130:
      return 16;

    case 148:
    case 165:
      return op_prio (TREE_OPERAND (op, 0));

    default:


      return 9999;
    }
}
