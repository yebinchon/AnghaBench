
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 scalar_t__ ASM_OPERANDS_INPUT (scalar_t__,int) ;
 scalar_t__ ASM_OPERANDS_INPUT_CONSTRAINT (scalar_t__,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (scalar_t__) ;
 scalar_t__ ASM_OPERANDS_OUTPUT_CONSTRAINT (scalar_t__) ;
 scalar_t__ ASM_OPERANDS_OUTPUT_IDX (scalar_t__) ;
 scalar_t__ ASM_OPERANDS_TEMPLATE (scalar_t__) ;
 int BLKmode ;


 int CLASS_LIKELY_SPILLED_P (int ) ;
 int CODE_LABEL_NUMBER (scalar_t__) ;

 scalar_t__ CONST_DOUBLE_HIGH (scalar_t__) ;
 scalar_t__ CONST_DOUBLE_LOW (scalar_t__) ;
 int CONST_DOUBLE_REAL_VALUE (scalar_t__) ;


 scalar_t__ CONST_VECTOR_ELT (scalar_t__,int) ;
 int CONST_VECTOR_NUNITS (scalar_t__) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_CLASS (int) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 scalar_t__ INTVAL (scalar_t__) ;


 int MEM_P (scalar_t__) ;
 int MEM_READONLY_P (scalar_t__) ;
 int MEM_VOLATILE_P (scalar_t__) ;
 int MODE_CC ;
 unsigned int REGNO (scalar_t__) ;
 int REGNO_REG_CLASS (unsigned int) ;
 int REG_P (scalar_t__) ;
 scalar_t__ REG_QTY (unsigned int) ;
 int SMALL_REGISTER_CLASSES ;

 unsigned int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;

 unsigned int UNITS_PER_WORD ;


 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XINT (scalar_t__,int) ;
 scalar_t__ XSTR (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 scalar_t__ arg_pointer_rtx ;
 int * fixed_regs ;
 scalar_t__ frame_pointer_rtx ;
 int gcc_unreachable () ;
 int * global_regs ;
 scalar_t__ hard_frame_pointer_rtx ;
 unsigned int hash_rtx_string (scalar_t__) ;
 scalar_t__ pic_offset_table_rtx ;
 unsigned int real_hash (int ) ;
 int reload_completed ;
 scalar_t__ stack_pointer_rtx ;

unsigned
hash_rtx (rtx x, enum machine_mode mode, int *do_not_record_p,
   int *hash_arg_in_memory_p, bool have_reg_qty)
{
  int i, j;
  unsigned hash = 0;
  enum rtx_code code;
  const char *fmt;




 repeat:
  if (x == 0)
    return hash;

  code = GET_CODE (x);
  switch (code)
    {
    case 132:
      {
 unsigned int regno = REGNO (x);

 if (!reload_completed)
   {
     bool record;

     if (regno >= FIRST_PSEUDO_REGISTER)
       record = 1;
     else if (x == frame_pointer_rtx
       || x == hard_frame_pointer_rtx
       || x == arg_pointer_rtx
       || x == stack_pointer_rtx
       || x == pic_offset_table_rtx)
       record = 1;
     else if (global_regs[regno])
       record = 0;
     else if (fixed_regs[regno])
       record = 1;
     else if (GET_MODE_CLASS (GET_MODE (x)) == MODE_CC)
       record = 1;
     else if (SMALL_REGISTER_CLASSES)
       record = 0;
     else if (CLASS_LIKELY_SPILLED_P (REGNO_REG_CLASS (regno)))
       record = 0;
     else
       record = 1;

     if (!record)
       {
  *do_not_record_p = 1;
  return 0;
       }
   }

 hash += ((unsigned int) 132 << 7);
        hash += (have_reg_qty ? (unsigned) REG_QTY (regno) : regno);
 return hash;
      }




    case 131:
      {
 if (REG_P (SUBREG_REG (x)))
   {
     hash += (((unsigned int) 131 << 7)
       + REGNO (SUBREG_REG (x))
       + (SUBREG_BYTE (x) / UNITS_PER_WORD));
     return hash;
   }
 break;
      }

    case 143:
      hash += (((unsigned int) 143 << 7) + (unsigned int) mode
               + (unsigned int) INTVAL (x));
      return hash;

    case 144:


      hash += (unsigned int) code + (unsigned int) GET_MODE (x);
      if (GET_MODE (x) != VOIDmode)
 hash += real_hash (CONST_DOUBLE_REAL_VALUE (x));
      else
 hash += ((unsigned int) CONST_DOUBLE_LOW (x)
   + (unsigned int) CONST_DOUBLE_HIGH (x));
      return hash;

    case 142:
      {
 int units;
 rtx elt;

 units = CONST_VECTOR_NUNITS (x);

 for (i = 0; i < units; ++i)
   {
     elt = CONST_VECTOR_ELT (x, i);
     hash += hash_rtx (elt, GET_MODE (elt), do_not_record_p,
         hash_arg_in_memory_p, have_reg_qty);
   }

 return hash;
      }


    case 141:


  hash += (((unsigned int) 141 << 7)
    + CODE_LABEL_NUMBER (XEXP (x, 0)));
      return hash;

    case 130:
      {





 unsigned int h = 0;
 const unsigned char *p = (const unsigned char *) XSTR (x, 0);

 while (*p)
   h += (h << 7) + *p++;

 hash += ((unsigned int) 130 << 7) + h;
 return hash;
      }

    case 140:


      if (MEM_VOLATILE_P (x) || GET_MODE (x) == BLKmode)
 {
   *do_not_record_p = 1;
   return 0;
 }
      if (hash_arg_in_memory_p && !MEM_READONLY_P (x))
 *hash_arg_in_memory_p = 1;



      hash += (unsigned) 140;
      x = XEXP (x, 0);
      goto repeat;

    case 128:





      if (MEM_P (XEXP (x, 0))
   && ! MEM_VOLATILE_P (XEXP (x, 0)))
 {
   hash += (unsigned) 128;
   x = XEXP (x, 0);

   if (hash_arg_in_memory_p && !MEM_READONLY_P (x))
     *hash_arg_in_memory_p = 1;



   hash += (unsigned) 140;
   x = XEXP (x, 0);
   goto repeat;
 }
      break;

    case 135:
    case 134:
    case 138:
    case 137:
    case 133:
    case 136:
    case 139:
    case 145:
    case 146:
    case 129:
      *do_not_record_p = 1;
      return 0;

    case 147:
      if (MEM_VOLATILE_P (x))
 {
   *do_not_record_p = 1;
   return 0;
 }
      else
 {

   hash += (unsigned) code + (unsigned) GET_MODE (x)
     + hash_rtx_string (ASM_OPERANDS_TEMPLATE (x))
     + hash_rtx_string (ASM_OPERANDS_OUTPUT_CONSTRAINT (x))
     + (unsigned) ASM_OPERANDS_OUTPUT_IDX (x);

   if (ASM_OPERANDS_INPUT_LENGTH (x))
     {
       for (i = 1; i < ASM_OPERANDS_INPUT_LENGTH (x); i++)
  {
    hash += (hash_rtx (ASM_OPERANDS_INPUT (x, i),
         GET_MODE (ASM_OPERANDS_INPUT (x, i)),
         do_not_record_p, hash_arg_in_memory_p,
         have_reg_qty)
      + hash_rtx_string
    (ASM_OPERANDS_INPUT_CONSTRAINT (x, i)));
  }

       hash += hash_rtx_string (ASM_OPERANDS_INPUT_CONSTRAINT (x, 0));
       x = ASM_OPERANDS_INPUT (x, 0);
       mode = GET_MODE (x);
       goto repeat;
     }

   return hash;
 }
      break;

    default:
      break;
    }

  i = GET_RTX_LENGTH (code) - 1;
  hash += (unsigned) code + (unsigned) GET_MODE (x);
  fmt = GET_RTX_FORMAT (code);
  for (; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'e':



   if (i == 0)
     {
       x = XEXP (x, i);
       goto repeat;
     }

   hash += hash_rtx (XEXP (x, i), 0, do_not_record_p,
       hash_arg_in_memory_p, have_reg_qty);
   break;

 case 'E':
   for (j = 0; j < XVECLEN (x, i); j++)
     hash += hash_rtx (XVECEXP (x, i, j), 0, do_not_record_p,
         hash_arg_in_memory_p, have_reg_qty);
   break;

 case 's':
   hash += hash_rtx_string (XSTR (x, i));
   break;

 case 'i':
   hash += (unsigned int) XINT (x, i);
   break;

 case '0': case 't':

   break;

 default:
   gcc_unreachable ();
 }
    }

  return hash;
}
