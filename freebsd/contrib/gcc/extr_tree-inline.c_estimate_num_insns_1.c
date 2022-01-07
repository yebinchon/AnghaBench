
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
 int BUILT_IN_NORMAL ;
 scalar_t__ CONSTANT_CLASS_P (int *) ;


 int * DECL_ARGUMENTS (int *) ;
 int DECL_BUILT_IN_CLASS (int *) ;
 int DECL_FUNCTION_CODE (int *) ;
 scalar_t__ IS_TYPE_OR_DECL_P (int *) ;
 int * NULL_TREE ;
 int PARAM_INLINE_CALL_COST ;
 int PARAM_VALUE (int ) ;
 scalar_t__ REFERENCE_CLASS_P (int *) ;
 int * TREE_CHAIN (int *) ;
 int TREE_CODE (int *) ;

 int * TREE_OPERAND (int *,int) ;
 int TREE_TYPE (int *) ;
 int * TREE_VALUE (int *) ;
 int estimate_move_cost (int ) ;
 int gcc_unreachable () ;
 int * get_callee_fndecl (int *) ;
 int is_gimple_reg (int *) ;

__attribute__((used)) static tree
estimate_num_insns_1 (tree *tp, int *walk_subtrees, void *data)
{
  int *count = (int *) data;
  tree x = *tp;

  if (IS_TYPE_OR_DECL_P (x))
    {
      *walk_subtrees = 0;
      return ((void*)0);
    }



  else if (CONSTANT_CLASS_P (x) || REFERENCE_CLASS_P (x))
    return ((void*)0);

  switch (TREE_CODE (x))
    {

    case 155:
    case 154:
    case 250:
    case 240:
    case 254:
    case 214:
    case 260:
    case 201:
    case 258:
    case 259:
    case 194:
    case 229:
    case 226:
    case 239:
    case 256:
    case 129:
    case 195:
    case 132:
    case 161:
    case 261:
    case 241:
    case 174:
    case 246:
    case 160:
    case 245:
    case 233:
    case 159:
    case 231:
    case 196:
    case 227:
    case 137:
    case 145:
    case 144:
    case 211:
    case 217:
    case 166:
    case 228:
    case 209:
    case 180:
    case 128:
    case 192:
    case 185:
    case 191:
      break;





    case 215:
    case 212:
    case 171:
    case 242:
    case 136:
    case 158:
      *walk_subtrees = 0;
      return ((void*)0);
    case 213:
    case 200:

      if (TREE_CODE (TREE_OPERAND (x, 1)) == 156)
 break;


    case 156:
      x = TREE_OPERAND (x, 0);

      if (is_gimple_reg (x))
 break;


    case 236:
      *count += estimate_move_cost (TREE_TYPE (x));
      break;



    case 238:
    case 135:

    case 179:
    case 203:
    case 199:

    case 222:
    case 225:
    case 224:
    case 223:

    case 198:
    case 221:
    case 202:
    case 204:
    case 262:

    case 207:
    case 162:
    case 208:
    case 163:
    case 134:
    case 133:

    case 253:
    case 251:
    case 255:
    case 252:

    case 151:
    case 148:
    case 150:
    case 147:
    case 146:
    case 149:

    case 205:
    case 210:
    case 216:
    case 218:
    case 232:
    case 197:
    case 181:
    case 138:

    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 206:

    case 235:

    case 237:

    case 176:
    case 175:
    case 178:
    case 177:

    case 157:

    case 257:

    case 172:

    case 170:
    case 169:
    case 168:
    case 130:
    case 234:

    case 131:

    case 167:
      *count += 1;
      break;



    case 153:
    case 244:
    case 220:
    case 165:
    case 230:
    case 152:
    case 243:
    case 219:
    case 164:
    case 173:
      *count += 10;
      break;
    case 247:
      {
 tree decl = get_callee_fndecl (x);
 tree arg;

 if (decl && DECL_BUILT_IN_CLASS (decl) == BUILT_IN_NORMAL)
   switch (DECL_FUNCTION_CODE (decl))
     {
     case 249:
       *walk_subtrees = 0;
       return NULL_TREE;
     case 248:
       return NULL_TREE;
     default:
       break;
     }



 if (!decl)
   {
     for (arg = TREE_OPERAND (x, 1); arg; arg = TREE_CHAIN (arg))
       *count += estimate_move_cost (TREE_TYPE (TREE_VALUE (arg)));
   }
 else
   {
     for (arg = DECL_ARGUMENTS (decl); arg; arg = TREE_CHAIN (arg))
       *count += estimate_move_cost (TREE_TYPE (arg));
   }

 *count += PARAM_VALUE (PARAM_INLINE_CALL_COST);
 break;
      }

    case 186:
    case 189:
    case 183:
    case 182:
    case 184:
    case 188:
    case 187:
    case 190:
    case 193:

      *count += 40;
      break;

    default:
      gcc_unreachable ();
    }
  return ((void*)0);
}
