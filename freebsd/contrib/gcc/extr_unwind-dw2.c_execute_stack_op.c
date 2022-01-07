
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int dummy; } ;
typedef int stack ;
typedef enum dwarf_location_atom { ____Placeholder_dwarf_location_atom } dwarf_location_atom ;
typedef int _Unwind_Word ;
typedef int _Unwind_Sword ;
typedef int _Unwind_Ptr ;
 int _Unwind_GetGR (struct _Unwind_Context*,int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int read_1s (unsigned char const*) ;
 int read_1u (void*) ;
 int read_2s (unsigned char const*) ;
 int read_2u (void*) ;
 int read_4s (unsigned char const*) ;
 int read_4u (void*) ;
 int read_8s (unsigned char const*) ;
 int read_8u (void*) ;
 int read_pointer (void*) ;
 unsigned char* read_sleb128 (unsigned char const*,int*) ;
 unsigned char* read_uleb128 (unsigned char const*,int*) ;

__attribute__((used)) static _Unwind_Word
execute_stack_op (const unsigned char *op_ptr, const unsigned char *op_end,
    struct _Unwind_Context *context, _Unwind_Word initial)
{
  _Unwind_Word stack[64];
  int stack_elt;

  stack[0] = initial;
  stack_elt = 1;

  while (op_ptr < op_end)
    {
      enum dwarf_location_atom op = *op_ptr++;
      _Unwind_Word result, reg, utmp;
      _Unwind_Sword offset, stmp;

      switch (op)
 {
 case 212:
 case 211:
 case 200:
 case 189:
 case 186:
 case 185:
 case 184:
 case 183:
 case 182:
 case 181:
 case 210:
 case 209:
 case 208:
 case 207:
 case 206:
 case 205:
 case 204:
 case 203:
 case 202:
 case 201:
 case 199:
 case 198:
 case 197:
 case 196:
 case 195:
 case 194:
 case 193:
 case 192:
 case 191:
 case 190:
 case 188:
 case 187:
   result = op - 212;
   break;

 case 267:
   result = (_Unwind_Word) (_Unwind_Ptr) read_pointer (op_ptr);
   op_ptr += sizeof (void *);
   break;

 case 230:
   result = read_1u (op_ptr);
   op_ptr += 1;
   break;
 case 231:
   result = read_1s (op_ptr);
   op_ptr += 1;
   break;
 case 228:
   result = read_2u (op_ptr);
   op_ptr += 2;
   break;
 case 229:
   result = read_2s (op_ptr);
   op_ptr += 2;
   break;
 case 226:
   result = read_4u (op_ptr);
   op_ptr += 4;
   break;
 case 227:
   result = read_4s (op_ptr);
   op_ptr += 4;
   break;
 case 224:
   result = read_8u (op_ptr);
   op_ptr += 8;
   break;
 case 225:
   result = read_8s (op_ptr);
   op_ptr += 8;
   break;
 case 222:
   op_ptr = read_uleb128 (op_ptr, &result);
   break;
 case 223:
   op_ptr = read_sleb128 (op_ptr, &stmp);
   result = stmp;
   break;

 case 167:
 case 166:
 case 155:
 case 144:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 165:
 case 164:
 case 163:
 case 162:
 case 161:
 case 160:
 case 159:
 case 158:
 case 157:
 case 156:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 143:
 case 142:
   result = _Unwind_GetGR (context, op - 167);
   break;
 case 135:
   op_ptr = read_uleb128 (op_ptr, &reg);
   result = _Unwind_GetGR (context, reg);
   break;

 case 264:
 case 263:
 case 252:
 case 241:
 case 238:
 case 237:
 case 236:
 case 235:
 case 234:
 case 233:
 case 262:
 case 261:
 case 260:
 case 259:
 case 258:
 case 257:
 case 256:
 case 255:
 case 254:
 case 253:
 case 251:
 case 250:
 case 249:
 case 248:
 case 247:
 case 246:
 case 245:
 case 244:
 case 243:
 case 242:
 case 240:
 case 239:
   op_ptr = read_sleb128 (op_ptr, &offset);
   result = _Unwind_GetGR (context, op - 264) + offset;
   break;
 case 232:
   op_ptr = read_uleb128 (op_ptr, &reg);
   op_ptr = read_sleb128 (op_ptr, &offset);
   result = _Unwind_GetGR (context, reg) + offset;
   break;

 case 217:
   gcc_assert (stack_elt);
   result = stack[stack_elt - 1];
   break;

 case 218:
   gcc_assert (stack_elt);
   stack_elt -= 1;
   goto no_push;

 case 170:
   offset = *op_ptr++;
   gcc_assert (offset < stack_elt - 1);
   result = stack[stack_elt - 1 - offset];
   break;

 case 171:
   gcc_assert (stack_elt >= 2);
   result = stack[stack_elt - 2];
   break;

 case 129:
   {
     _Unwind_Word t;
     gcc_assert (stack_elt >= 2);
     t = stack[stack_elt - 1];
     stack[stack_elt - 1] = stack[stack_elt - 2];
     stack[stack_elt - 2] = t;
     goto no_push;
   }

 case 134:
   {
     _Unwind_Word t1, t2, t3;

     gcc_assert (stack_elt >= 3);
     t1 = stack[stack_elt - 1];
     t2 = stack[stack_elt - 2];
     t3 = stack[stack_elt - 3];
     stack[stack_elt - 1] = t2;
     stack[stack_elt - 2] = t3;
     stack[stack_elt - 3] = t1;
     goto no_push;
   }

 case 221:
 case 220:
 case 268:
 case 175:
 case 173:
 case 168:

   gcc_assert (stack_elt);
   stack_elt -= 1;

   result = stack[stack_elt];

   switch (op)
     {
     case 221:
       {
  void *ptr = (void *) (_Unwind_Ptr) result;
  result = (_Unwind_Ptr) read_pointer (ptr);
       }
       break;

     case 220:
       {
  void *ptr = (void *) (_Unwind_Ptr) result;
  switch (*op_ptr++)
    {
    case 1:
      result = read_1u (ptr);
      break;
    case 2:
      result = read_2u (ptr);
      break;
    case 4:
      result = read_4u (ptr);
      break;
    case 8:
      result = read_8u (ptr);
      break;
    default:
      gcc_unreachable ();
    }
       }
       break;

     case 268:
       if ((_Unwind_Sword) result < 0)
  result = -result;
       break;
     case 175:
       result = -result;
       break;
     case 173:
       result = ~result;
       break;
     case 168:
       op_ptr = read_uleb128 (op_ptr, &utmp);
       result += utmp;
       break;

     default:
       gcc_unreachable ();
     }
   break;

 case 266:
 case 219:
 case 179:
 case 178:
 case 177:
 case 172:
 case 169:
 case 133:
 case 132:
 case 131:
 case 128:
 case 213:
 case 215:
 case 216:
 case 180:
 case 214:
 case 176:
   {

     _Unwind_Word first, second;
     gcc_assert (stack_elt >= 2);
     stack_elt -= 2;

     second = stack[stack_elt];
     first = stack[stack_elt + 1];

     switch (op)
       {
       case 266:
  result = second & first;
  break;
       case 219:
  result = (_Unwind_Sword) second / (_Unwind_Sword) first;
  break;
       case 179:
  result = second - first;
  break;
       case 178:
  result = (_Unwind_Sword) second % (_Unwind_Sword) first;
  break;
       case 177:
  result = second * first;
  break;
       case 172:
  result = second | first;
  break;
       case 169:
  result = second + first;
  break;
       case 133:
  result = second << first;
  break;
       case 132:
  result = second >> first;
  break;
       case 131:
  result = (_Unwind_Sword) second >> first;
  break;
       case 128:
  result = second ^ first;
  break;
       case 213:
  result = (_Unwind_Sword) first <= (_Unwind_Sword) second;
  break;
       case 215:
  result = (_Unwind_Sword) first >= (_Unwind_Sword) second;
  break;
       case 216:
  result = (_Unwind_Sword) first == (_Unwind_Sword) second;
  break;
       case 180:
  result = (_Unwind_Sword) first < (_Unwind_Sword) second;
  break;
       case 214:
  result = (_Unwind_Sword) first > (_Unwind_Sword) second;
  break;
       case 176:
  result = (_Unwind_Sword) first != (_Unwind_Sword) second;
  break;

       default:
  gcc_unreachable ();
       }
   }
   break;

 case 130:
   offset = read_2s (op_ptr);
   op_ptr += 2;
   op_ptr += offset;
   goto no_push;

 case 265:
   gcc_assert (stack_elt);
   stack_elt -= 1;

   offset = read_2s (op_ptr);
   op_ptr += 2;
   if (stack[stack_elt] != 0)
     op_ptr += offset;
   goto no_push;

 case 174:
   goto no_push;

 default:
   gcc_unreachable ();
 }


      gcc_assert ((size_t) stack_elt < sizeof(stack)/sizeof(*stack));
      stack[stack_elt++] = result;
    no_push:;
    }



  gcc_assert (stack_elt);
  stack_elt -= 1;
  return stack[stack_elt];
}
