
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct funny_match {int this; int other; } ;
typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int n_operands; scalar_t__ n_alternatives; char** constraints; int* operand_mode; scalar_t__* operand_type; int * operand; } ;


 int ALL_REGS ;
 int CONSTANT_P (int ) ;
 int CONSTRAINT_LEN (int,char const*) ;
 scalar_t__ CONST_DOUBLE ;
 int CONST_DOUBLE_OK_FOR_CONSTRAINT_P (int ,int,char const*) ;
 scalar_t__ CONST_INT ;
 int CONST_OK_FOR_CONSTRAINT_P (int ,int,char const*) ;
 scalar_t__ CONST_VECTOR ;
 int EXTRA_ADDRESS_CONSTRAINT (int,char const*) ;
 int EXTRA_CONSTRAINT_STR (int ,int,char const*) ;
 int EXTRA_MEMORY_CONSTRAINT (int,char const*) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int GENERAL_REGS ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int) ;
 int INTVAL (int ) ;
 int MAX_RECOG_OPERANDS ;
 scalar_t__ MEM_P (int ) ;
 int MODE_VECTOR_FLOAT ;
 int NO_REGS ;
 scalar_t__ OP_OUT ;
 scalar_t__ POST_DEC ;
 scalar_t__ POST_INC ;
 scalar_t__ PRE_DEC ;
 scalar_t__ PRE_INC ;
 scalar_t__ REGNO (int ) ;
 int REG_CLASS_FROM_CONSTRAINT (int,char const*) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SCRATCH ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 scalar_t__ UNARY_P (int ) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int general_operand (int ,int) ;
 int memory_address_p (int,int ) ;
 int offsettable_memref_p (int ) ;
 int offsettable_nonstrict_memref_p (int ) ;
 int operands_match_p (int ,int ) ;
 TYPE_1__ recog_data ;
 int reg_fits_class_p (int ,int,int,int) ;
 int reload_in_progress ;
 int safe_from_earlyclobber (int ,int ) ;
 int strict_memory_address_p (int,int ) ;
 int strtoul (char const*,char**,int) ;
 int subreg_regno_offset (scalar_t__,int,int ,int) ;
 int which_alternative ;

int
constrain_operands (int strict)
{
  const char *constraints[MAX_RECOG_OPERANDS];
  int matching_operands[MAX_RECOG_OPERANDS];
  int earlyclobber[MAX_RECOG_OPERANDS];
  int c;

  struct funny_match funny_match[MAX_RECOG_OPERANDS];
  int funny_match_index;

  which_alternative = 0;
  if (recog_data.n_operands == 0 || recog_data.n_alternatives == 0)
    return 1;

  for (c = 0; c < recog_data.n_operands; c++)
    {
      constraints[c] = recog_data.constraints[c];
      matching_operands[c] = -1;
    }

  do
    {
      int seen_earlyclobber_at = -1;
      int opno;
      int lose = 0;
      funny_match_index = 0;

      for (opno = 0; opno < recog_data.n_operands; opno++)
 {
   rtx op = recog_data.operand[opno];
   enum machine_mode mode = GET_MODE (op);
   const char *p = constraints[opno];
   int offset = 0;
   int win = 0;
   int val;
   int len;

   earlyclobber[opno] = 0;



   if (UNARY_P (op))
     op = XEXP (op, 0);

   if (GET_CODE (op) == SUBREG)
     {
       if (REG_P (SUBREG_REG (op))
    && REGNO (SUBREG_REG (op)) < FIRST_PSEUDO_REGISTER)
  offset = subreg_regno_offset (REGNO (SUBREG_REG (op)),
           GET_MODE (SUBREG_REG (op)),
           SUBREG_BYTE (op),
           GET_MODE (op));
       op = SUBREG_REG (op);
     }



   if (*p == 0 || *p == ',')
     win = 1;

   do
     switch (c = *p, len = CONSTRAINT_LEN (c, p), c)
       {
       case '\0':
  len = 0;
  break;
       case ',':
  c = '\0';
  break;

       case '?': case '!': case '*': case '%':
       case '=': case '+':
  break;

       case '#':


  do
    p++;
  while (*p && *p != ',');
  len = 0;
  break;

       case '&':
  earlyclobber[opno] = 1;
  if (seen_earlyclobber_at < 0)
    seen_earlyclobber_at = opno;
  break;

       case '0': case '1': case '2': case '3': case '4':
       case '5': case '6': case '7': case '8': case '9':
  {
    char *end;
    int match;

    match = strtoul (p, &end, 10);
    p = end;

    if (strict < 0)
      val = 1;
    else
      {
        rtx op1 = recog_data.operand[match];
        rtx op2 = recog_data.operand[opno];



        if (UNARY_P (op1))
   op1 = XEXP (op1, 0);
        if (UNARY_P (op2))
   op2 = XEXP (op2, 0);

        val = operands_match_p (op1, op2);
      }

    matching_operands[opno] = match;
    matching_operands[match] = opno;

    if (val != 0)
      win = 1;




    if (val == 2 && strict > 0)
      {
        funny_match[funny_match_index].this = opno;
        funny_match[funny_match_index++].other = match;
      }
  }
  len = 0;
  break;

       case 'p':




  if (strict <= 0
      || (strict_memory_address_p (recog_data.operand_mode[opno],
       op)))
    win = 1;
  break;





       case 'g':


  if (REG_P (op))
    {
      if (strict < 0
   || GENERAL_REGS == ALL_REGS
   || (reload_in_progress
       && REGNO (op) >= FIRST_PSEUDO_REGISTER)
   || reg_fits_class_p (op, GENERAL_REGS, offset, mode))
        win = 1;
    }
  else if (strict < 0 || general_operand (op, mode))
    win = 1;
  break;

       case 'X':



  win = 1;
  break;

       case 'm':


  if (MEM_P (op))
    {
      if (strict > 0
   && !strict_memory_address_p (GET_MODE (op),
           XEXP (op, 0)))
        break;
      if (strict == 0
   && !memory_address_p (GET_MODE (op), XEXP (op, 0)))
        break;
      win = 1;
    }

  else if (strict < 0 && CONSTANT_P (op))
    win = 1;

  else if (reload_in_progress && REG_P (op)
    && REGNO (op) >= FIRST_PSEUDO_REGISTER)
    win = 1;
  break;

       case '<':
  if (MEM_P (op)
      && (GET_CODE (XEXP (op, 0)) == PRE_DEC
   || GET_CODE (XEXP (op, 0)) == POST_DEC))
    win = 1;
  break;

       case '>':
  if (MEM_P (op)
      && (GET_CODE (XEXP (op, 0)) == PRE_INC
   || GET_CODE (XEXP (op, 0)) == POST_INC))
    win = 1;
  break;

       case 'E':
       case 'F':
  if (GET_CODE (op) == CONST_DOUBLE
      || (GET_CODE (op) == CONST_VECTOR
   && GET_MODE_CLASS (GET_MODE (op)) == MODE_VECTOR_FLOAT))
    win = 1;
  break;

       case 'G':
       case 'H':
  if (GET_CODE (op) == CONST_DOUBLE
      && CONST_DOUBLE_OK_FOR_CONSTRAINT_P (op, c, p))
    win = 1;
  break;

       case 's':
  if (GET_CODE (op) == CONST_INT
      || (GET_CODE (op) == CONST_DOUBLE
   && GET_MODE (op) == VOIDmode))
    break;
       case 'i':
  if (CONSTANT_P (op))
    win = 1;
  break;

       case 'n':
  if (GET_CODE (op) == CONST_INT
      || (GET_CODE (op) == CONST_DOUBLE
   && GET_MODE (op) == VOIDmode))
    win = 1;
  break;

       case 'I':
       case 'J':
       case 'K':
       case 'L':
       case 'M':
       case 'N':
       case 'O':
       case 'P':
  if (GET_CODE (op) == CONST_INT
      && CONST_OK_FOR_CONSTRAINT_P (INTVAL (op), c, p))
    win = 1;
  break;

       case 'V':
  if (MEM_P (op)
      && ((strict > 0 && ! offsettable_memref_p (op))
   || (strict < 0
       && !(CONSTANT_P (op) || MEM_P (op)))
   || (reload_in_progress
       && !(REG_P (op)
     && REGNO (op) >= FIRST_PSEUDO_REGISTER))))
    win = 1;
  break;

       case 'o':
  if ((strict > 0 && offsettable_memref_p (op))
      || (strict == 0 && offsettable_nonstrict_memref_p (op))

      || (strict < 0
   && (CONSTANT_P (op) || MEM_P (op)))

      || (reload_in_progress && REG_P (op)
   && REGNO (op) >= FIRST_PSEUDO_REGISTER))
    win = 1;
  break;

       default:
  {
    enum reg_class cl;

    cl = (c == 'r'
      ? GENERAL_REGS : REG_CLASS_FROM_CONSTRAINT (c, p));
    if (cl != NO_REGS)
      {
        if (strict < 0
     || (strict == 0
         && REG_P (op)
         && REGNO (op) >= FIRST_PSEUDO_REGISTER)
     || (strict == 0 && GET_CODE (op) == SCRATCH)
     || (REG_P (op)
         && reg_fits_class_p (op, cl, offset, mode)))
          win = 1;
      }
    break;
  }
       }
   while (p += len, c);

   constraints[opno] = p;


   if (! win)
     lose = 1;
 }


      if (! lose)
 {
   int opno, eopno;




   if (strict > 0 && seen_earlyclobber_at >= 0)
     for (eopno = seen_earlyclobber_at;
   eopno < recog_data.n_operands;
   eopno++)



       if (earlyclobber[eopno]
    && REG_P (recog_data.operand[eopno]))
  for (opno = 0; opno < recog_data.n_operands; opno++)
    if ((MEM_P (recog_data.operand[opno])
         || recog_data.operand_type[opno] != OP_OUT)
        && opno != eopno

        && *recog_data.constraints[opno] != 0
        && ! (matching_operands[opno] == eopno
       && operands_match_p (recog_data.operand[opno],
       recog_data.operand[eopno]))
        && ! safe_from_earlyclobber (recog_data.operand[opno],
         recog_data.operand[eopno]))
      lose = 1;

   if (! lose)
     {
       while (--funny_match_index >= 0)
  {
    recog_data.operand[funny_match[funny_match_index].other]
      = recog_data.operand[funny_match[funny_match_index].this];
  }

       return 1;
     }
 }

      which_alternative++;
    }
  while (which_alternative < recog_data.n_alternatives);

  which_alternative = -1;


  if (strict == 0)
    return constrain_operands (-1);
  else
    return 0;
}
