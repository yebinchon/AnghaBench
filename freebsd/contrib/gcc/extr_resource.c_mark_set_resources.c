
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resources {int cc; int memory; int volatil; int regs; int unch_memory; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum mark_resource_type { ____Placeholder_mark_resource_type } mark_resource_type ;




 int ASM_OPERANDS_INPUT (int ,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (int ) ;

 int CALL ;

 int CALL_INSN_FUNCTION_USAGE (int ) ;







 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;

 int INSN_ANNULLED_BRANCH_P (int ) ;
 int INSN_FROM_TARGET_P (int ) ;
 int INSN_SETS_ARE_DELAYED (int ) ;


 int MARK_SRC_DEST ;
 int MARK_SRC_DEST_CALL ;

 int MEM_READONLY_P (int ) ;
 int MEM_VOLATILE_P (int ) ;

 int PATTERN (int ) ;
 unsigned int REGNO (int ) ;
 int REG_P (int ) ;
 int REG_SETJMP ;


 int SET_DEST (int ) ;
 int SET_HARD_REG_BIT (int ,unsigned int) ;
 int SET_HARD_REG_SET (int ) ;
 int SET_SRC (int ) ;


 int SUBREG_REG (int ) ;




 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

 int * call_used_regs ;
 int find_reg_note (int ,int ,int *) ;
 int gcc_assert (int) ;
 int * global_regs ;
 int ** hard_regno_nregs ;
 unsigned int subreg_regno (int ) ;

void
mark_set_resources (rtx x, struct resources *res, int in_dest,
      enum mark_resource_type mark_type)
{
  enum rtx_code code;
  int i, j;
  unsigned int r;
  const char *format_ptr;

 restart:

  code = GET_CODE (x);

  switch (code)
    {
    case 145:
    case 158:
    case 154:
    case 129:
    case 151:
    case 152:
    case 150:
    case 147:
    case 132:
    case 153:
    case 144:

      return;

    case 156:
      if (in_dest)
 res->cc = 1;
      return;

    case 157:




      if (mark_type == MARK_SRC_DEST_CALL)
 {
   rtx link;

   res->cc = res->memory = 1;
   for (r = 0; r < FIRST_PSEUDO_REGISTER; r++)
     if (call_used_regs[r] || global_regs[r])
       SET_HARD_REG_BIT (res->regs, r);

   for (link = CALL_INSN_FUNCTION_USAGE (x);
        link; link = XEXP (link, 1))
     if (GET_CODE (XEXP (link, 0)) == 155)
       mark_set_resources (SET_DEST (XEXP (link, 0)), res, 1,
      MARK_SRC_DEST);



   if (find_reg_note (x, REG_SETJMP, ((void*)0)))
     SET_HARD_REG_SET (res->regs);
 }



    case 148:
    case 149:
      x = PATTERN (x);
      if (GET_CODE (x) != 129 && GET_CODE (x) != 155)
 goto restart;
      return;

    case 135:




      mark_set_resources (SET_DEST (x), res,
     (mark_type == MARK_SRC_DEST_CALL
      || GET_CODE (SET_SRC (x)) != CALL),
     mark_type);

      mark_set_resources (SET_SRC (x), res, 0, MARK_SRC_DEST);
      return;

    case 155:
      mark_set_resources (XEXP (x, 0), res, 1, MARK_SRC_DEST);
      return;

    case 136:
      for (i = 0; i < XVECLEN (x, 0); i++)
 if (! (INSN_ANNULLED_BRANCH_P (XVECEXP (x, 0, 0))
        && INSN_FROM_TARGET_P (XVECEXP (x, 0, i))))
   mark_set_resources (XVECEXP (x, 0, i), res, 0, mark_type);
      return;

    case 142:
    case 139:
    case 143:
    case 140:
      mark_set_resources (XEXP (x, 0), res, 1, MARK_SRC_DEST);
      return;

    case 138:
    case 141:
      mark_set_resources (XEXP (x, 0), res, 1, MARK_SRC_DEST);
      mark_set_resources (XEXP (XEXP (x, 1), 0), res, 0, MARK_SRC_DEST);
      mark_set_resources (XEXP (XEXP (x, 1), 1), res, 0, MARK_SRC_DEST);
      return;

    case 134:
    case 128:
      mark_set_resources (XEXP (x, 0), res, in_dest, MARK_SRC_DEST);
      mark_set_resources (XEXP (x, 1), res, 0, MARK_SRC_DEST);
      mark_set_resources (XEXP (x, 2), res, 0, MARK_SRC_DEST);
      return;

    case 146:
      if (in_dest)
 {
   res->memory = 1;
   res->unch_memory |= MEM_READONLY_P (x);
   res->volatil |= MEM_VOLATILE_P (x);
 }

      mark_set_resources (XEXP (x, 0), res, 0, MARK_SRC_DEST);
      return;

    case 133:
      if (in_dest)
 {
   if (!REG_P (SUBREG_REG (x)))
     mark_set_resources (SUBREG_REG (x), res, in_dest, mark_type);
   else
     {
       unsigned int regno = subreg_regno (x);
       unsigned int last_regno
  = regno + hard_regno_nregs[regno][GET_MODE (x)];

       gcc_assert (last_regno <= FIRST_PSEUDO_REGISTER);
       for (r = regno; r < last_regno; r++)
  SET_HARD_REG_BIT (res->regs, r);
     }
 }
      return;

    case 137:
      if (in_dest)
 {
   unsigned int regno = REGNO (x);
   unsigned int last_regno
     = regno + hard_regno_nregs[regno][GET_MODE (x)];

   gcc_assert (last_regno <= FIRST_PSEUDO_REGISTER);
   for (r = regno; r < last_regno; r++)
     SET_HARD_REG_BIT (res->regs, r);
 }
      return;

    case 130:
    case 160:

      res->volatil = 1;
      return;

    case 131:
      res->volatil = 1;
      break;

    case 159:
      res->volatil |= MEM_VOLATILE_P (x);






      for (i = 0; i < ASM_OPERANDS_INPUT_LENGTH (x); i++)
 mark_set_resources (ASM_OPERANDS_INPUT (x, i), res, in_dest,
       MARK_SRC_DEST);
      return;

    default:
      break;
    }


  format_ptr = GET_RTX_FORMAT (code);
  for (i = 0; i < GET_RTX_LENGTH (code); i++)
    switch (*format_ptr++)
      {
      case 'e':
 mark_set_resources (XEXP (x, i), res, in_dest, mark_type);
 break;

      case 'E':
 for (j = 0; j < XVECLEN (x, i); j++)
   mark_set_resources (XVECEXP (x, i, j), res, in_dest, mark_type);
 break;
      }
}
