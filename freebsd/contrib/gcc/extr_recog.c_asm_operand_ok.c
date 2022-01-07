
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BLKmode ;
 int CONSTANT_P (int ) ;
 int CONSTRAINT_LEN (char,char const*) ;
 int CONST_DOUBLE ;
 int CONST_DOUBLE_OK_FOR_CONSTRAINT_P (int ,char,char const*) ;
 int CONST_INT ;
 int CONST_OK_FOR_CONSTRAINT_P (int ,char,char const*) ;
 int CONST_VECTOR ;
 int EXTRA_ADDRESS_CONSTRAINT (char,char const*) ;
 int EXTRA_CONSTRAINT_STR (int ,char,char const*) ;
 int EXTRA_MEMORY_CONSTRAINT (char,char const*) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int ) ;
 int INTVAL (int ) ;
 int ISDIGIT (char const) ;
 int LEGITIMATE_PIC_OPERAND_P (int ) ;
 int MEM_P (int ) ;
 int MODE_VECTOR_FLOAT ;
 int NO_REGS ;
 int POST_DEC ;
 int POST_INC ;
 int PRE_DEC ;
 int PRE_INC ;
 int REG_CLASS_FROM_CONSTRAINT (char,char const*) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int address_operand (int ,int ) ;
 int flag_pic ;
 int gcc_assert (int) ;
 int general_operand (int ,int ) ;
 int memory_operand (int ,int ) ;
 int offsettable_nonstrict_memref_p (int ) ;
 int register_operand (int ,int ) ;
 int reload_completed ;

int
asm_operand_ok (rtx op, const char *constraint)
{
  int result = 0;


  gcc_assert (!reload_completed);

  while (*constraint)
    {
      char c = *constraint;
      int len;
      switch (c)
 {
 case ',':
   constraint++;
   continue;
 case '=':
 case '+':
 case '*':
 case '%':
 case '!':
 case '#':
 case '&':
 case '?':
   break;

 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':




   do
     constraint++;
   while (ISDIGIT (*constraint));
   if (! result)
     result = -1;
   continue;

 case 'p':
   if (address_operand (op, VOIDmode))
     result = 1;
   break;

 case 'm':
 case 'V':
   if (memory_operand (op, VOIDmode))
     result = 1;
   break;

 case 'o':
   if (offsettable_nonstrict_memref_p (op))
     result = 1;
   break;

 case '<':







   if (MEM_P (op)
       && (1
    || GET_CODE (XEXP (op, 0)) == PRE_DEC
    || GET_CODE (XEXP (op, 0)) == POST_DEC))
     result = 1;
   break;

 case '>':
   if (MEM_P (op)
       && (1
    || GET_CODE (XEXP (op, 0)) == PRE_INC
    || GET_CODE (XEXP (op, 0)) == POST_INC))
     result = 1;
   break;

 case 'E':
 case 'F':
   if (GET_CODE (op) == CONST_DOUBLE
       || (GET_CODE (op) == CONST_VECTOR
    && GET_MODE_CLASS (GET_MODE (op)) == MODE_VECTOR_FLOAT))
     result = 1;
   break;

 case 'G':
   if (GET_CODE (op) == CONST_DOUBLE
       && CONST_DOUBLE_OK_FOR_CONSTRAINT_P (op, 'G', constraint))
     result = 1;
   break;
 case 'H':
   if (GET_CODE (op) == CONST_DOUBLE
       && CONST_DOUBLE_OK_FOR_CONSTRAINT_P (op, 'H', constraint))
     result = 1;
   break;

 case 's':
   if (GET_CODE (op) == CONST_INT
       || (GET_CODE (op) == CONST_DOUBLE
    && GET_MODE (op) == VOIDmode))
     break;


 case 'i':
   if (CONSTANT_P (op) && (! flag_pic || LEGITIMATE_PIC_OPERAND_P (op)))
     result = 1;
   break;

 case 'n':
   if (GET_CODE (op) == CONST_INT
       || (GET_CODE (op) == CONST_DOUBLE
    && GET_MODE (op) == VOIDmode))
     result = 1;
   break;

 case 'I':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'I', constraint))
     result = 1;
   break;
 case 'J':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'J', constraint))
     result = 1;
   break;
 case 'K':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'K', constraint))
     result = 1;
   break;
 case 'L':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'L', constraint))
     result = 1;
   break;
 case 'M':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'M', constraint))
     result = 1;
   break;
 case 'N':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'N', constraint))
     result = 1;
   break;
 case 'O':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'O', constraint))
     result = 1;
   break;
 case 'P':
   if (GET_CODE (op) == CONST_INT
       && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), 'P', constraint))
     result = 1;
   break;

 case 'X':
   result = 1;
   break;

 case 'g':
   if (general_operand (op, VOIDmode))
     result = 1;
   break;

 default:


   if (REG_CLASS_FROM_CONSTRAINT (c, constraint) != NO_REGS)
     {
     case 'r':
       if (GET_MODE (op) == BLKmode)
  break;
       if (register_operand (op, VOIDmode))
  result = 1;
     }
   break;
 }
      len = CONSTRAINT_LEN (c, constraint);
      do
 constraint++;
      while (--len && *constraint);
      if (len)
 return 0;
    }

  return result;
}
