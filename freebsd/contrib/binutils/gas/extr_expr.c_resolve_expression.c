
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ valueT ;
typedef int symbolS ;
typedef scalar_t__ segT ;
typedef int operatorT ;
typedef scalar_t__ offsetT ;
typedef int fragS ;
struct TYPE_3__ {scalar_t__ X_add_number; int X_op; int * X_add_symbol; int * X_op_symbol; } ;
typedef TYPE_1__ expressionS ;
typedef scalar_t__ bfd_vma ;


 scalar_t__ OCTETS_PER_BYTE ;
 int abort () ;
 scalar_t__ absolute_section ;
 int finalize_syms ;
 int frag_offset_fixed_p (int *,int *,scalar_t__*) ;
 scalar_t__ reg_section ;
 int snapshot_symbol (int **,scalar_t__*,scalar_t__*,int **) ;
 scalar_t__ undefined_section ;

int
resolve_expression (expressionS *expressionP)
{

  valueT final_val = expressionP->X_add_number;
  symbolS *add_symbol = expressionP->X_add_symbol;
  symbolS *op_symbol = expressionP->X_op_symbol;
  operatorT op = expressionP->X_op;
  valueT left, right;
  segT seg_left, seg_right;
  fragS *frag_left, *frag_right;
  bfd_vma frag_off;

  switch (op)
    {
    default:
      return 0;

    case 147:
    case 133:
      left = 0;
      break;

    case 130:
    case 129:
      if (!snapshot_symbol (&add_symbol, &left, &seg_left, &frag_left))
 return 0;

      break;

    case 128:
    case 149:
    case 139:
      if (!snapshot_symbol (&add_symbol, &left, &seg_left, &frag_left))
 return 0;

      if (seg_left != absolute_section)
 return 0;

      if (op == 139)
 left = !left;
      else if (op == 128)
 left = -left;
      else
 left = ~left;
      op = 147;
      break;

    case 135:
    case 146:
    case 136:
    case 141:
    case 132:
    case 150:
    case 148:
    case 151:
    case 152:
    case 153:
    case 131:
    case 145:
    case 134:
    case 137:
    case 142:
    case 144:
    case 143:
    case 140:
    case 138:
      if (!snapshot_symbol (&add_symbol, &left, &seg_left, &frag_left)
   || !snapshot_symbol (&op_symbol, &right, &seg_right, &frag_right))
 return 0;



      if (op == 153)
 {
   if (seg_right == absolute_section)
     {
       final_val += right;
       op = 130;
       break;
     }
   else if (seg_left == absolute_section)
     {
       final_val += left;
       left = right;
       seg_left = seg_right;
       add_symbol = op_symbol;
       op = 130;
       break;
     }
 }
      else if (op == 131)
 {
   if (seg_right == absolute_section)
     {
       final_val -= right;
       op = 130;
       break;
     }
 }
      frag_off = 0;
      if (!(seg_left == absolute_section
        && seg_right == absolute_section)
   && !(op == 145 || op == 134)
   && !((op == 131
  || op == 137 || op == 142 || op == 144 || op == 143)
        && seg_left == seg_right
        && (finalize_syms
     || frag_offset_fixed_p (frag_left, frag_right, &frag_off))
        && (seg_left != reg_section || left == right)
        && (seg_left != undefined_section || add_symbol == op_symbol)))
 {
   if ((seg_left == absolute_section && left == 0)
       || (seg_right == absolute_section && right == 0))
     {
       if (op == 151 || op == 150)
  {
    if (seg_right != absolute_section || right != 0)
      {
        seg_left = seg_right;
        left = right;
        add_symbol = op_symbol;
      }
    op = 130;
    break;
  }
       else if (op == 141 || op == 132)
  {
    if (seg_left != absolute_section || left != 0)
      {
        op = 130;
        break;
      }
  }
       else if (op != 135
         && op != 148 && op != 152)
         return 0;
     }
   else if (op == 135
     && seg_left == absolute_section && left == 1)
     {
       seg_left = seg_right;
       left = right;
       add_symbol = op_symbol;
       op = 130;
       break;
     }
   else if ((op == 135 || op == 146)
     && seg_right == absolute_section && right == 1)
     {
       op = 130;
       break;
     }
   else if (left != right
     || ((seg_left != reg_section || seg_right != reg_section)
         && (seg_left != undefined_section
      || seg_right != undefined_section
      || add_symbol != op_symbol)))
     return 0;
   else if (op == 152 || op == 150)
     {
       op = 130;
       break;
     }
   else if (op != 151 && op != 148)
     return 0;
 }

      right += frag_off / OCTETS_PER_BYTE;
      switch (op)
 {
 case 153: left += right; break;
 case 131: left -= right; break;
 case 135: left *= right; break;
 case 146:
   if (right == 0)
     return 0;
   left = (offsetT) left / (offsetT) right;
   break;
 case 136:
   if (right == 0)
     return 0;
   left = (offsetT) left % (offsetT) right;
   break;
 case 141: left <<= right; break;
 case 132: left >>= right; break;
 case 150: left |= right; break;
 case 148: left |= ~right; break;
 case 151: left ^= right; break;
 case 152: left &= right; break;
 case 145:
 case 134:
   left = (left == right
    && seg_left == seg_right
    && (finalize_syms || frag_left == frag_right)
    && (seg_left != undefined_section
        || add_symbol == op_symbol)
    ? ~ (valueT) 0 : 0);
   if (op == 134)
     left = ~left;
   break;
 case 137:
   left = (offsetT) left < (offsetT) right ? ~ (valueT) 0 : 0;
   break;
 case 142:
   left = (offsetT) left <= (offsetT) right ? ~ (valueT) 0 : 0;
   break;
 case 144:
   left = (offsetT) left >= (offsetT) right ? ~ (valueT) 0 : 0;
   break;
 case 143:
   left = (offsetT) left > (offsetT) right ? ~ (valueT) 0 : 0;
   break;
 case 140: left = left && right; break;
 case 138: left = left || right; break;
 default: abort ();
 }

      op = 147;
      break;
    }

  if (op == 130)
    {
      if (seg_left == absolute_section)
 op = 147;
      else if (seg_left == reg_section && final_val == 0)
 op = 133;
      else if (add_symbol != expressionP->X_add_symbol)
 final_val += left;
      expressionP->X_add_symbol = add_symbol;
    }
  expressionP->X_op = op;

  if (op == 147 || op == 133)
    final_val += left;
  expressionP->X_add_number = final_val;

  return 1;
}
