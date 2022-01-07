
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resources {int unch_memory; int memory; int volatil; int cc; int regs; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int ASM_OPERANDS_INPUT (int ,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (int ) ;


 int CALL_INSN_FUNCTION_USAGE (int ) ;






 unsigned int FIRST_PSEUDO_REGISTER ;
 int FRAME_POINTER_REGNUM ;
 int const GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int HARD_FRAME_POINTER_REGNUM ;

 int INSN_REFERENCES_ARE_DELAYED (int ) ;



 int MEM_P (int ) ;
 int MEM_READONLY_P (int ) ;
 int MEM_VOLATILE_P (int ) ;
 int NEXT_INSN (int ) ;
 int PATTERN (int ) ;

 int PREV_INSN (int ) ;

 unsigned int REGNO (int ) ;
 int REG_P (int ) ;
 int REG_SETJMP ;
 int const SEQUENCE ;

 int SET_DEST (int ) ;
 int SET_HARD_REG_BIT (int ,int) ;
 int SET_HARD_REG_SET (int ) ;
 int SET_SRC (int ) ;
 int STACK_POINTER_REGNUM ;
 int const STRICT_LOW_PART ;

 int SUBREG_REG (int ) ;



 int const USE ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int const ZERO_EXTRACT ;
 int find_reg_note (int ,int ,int *) ;
 int frame_pointer_needed ;
 int gcc_assert (int) ;
 int * global_regs ;
 int ** hard_regno_nregs ;
 int rtx_equal_p (int ,int ) ;
 unsigned int subreg_regno (int ) ;

void
mark_referenced_resources (rtx x, struct resources *res,
      int include_delayed_effects)
{
  enum rtx_code code = GET_CODE (x);
  int i, j;
  unsigned int r;
  const char *format_ptr;



  switch (code)
    {
    case 142:
    case 140:
    case 141:
    case 139:
    case 134:
    case 130:
    case 136:
      return;

    case 131:
      if (!REG_P (SUBREG_REG (x)))
 mark_referenced_resources (SUBREG_REG (x), res, 0);
      else
 {
   unsigned int regno = subreg_regno (x);
   unsigned int last_regno
     = regno + hard_regno_nregs[regno][GET_MODE (x)];

   gcc_assert (last_regno <= FIRST_PSEUDO_REGISTER);
   for (r = regno; r < last_regno; r++)
     SET_HARD_REG_BIT (res->regs, r);
 }
      return;

    case 133:
 {
   unsigned int regno = REGNO (x);
   unsigned int last_regno
     = regno + hard_regno_nregs[regno][GET_MODE (x)];

   gcc_assert (last_regno <= FIRST_PSEUDO_REGISTER);
   for (r = regno; r < last_regno; r++)
     SET_HARD_REG_BIT (res->regs, r);
 }
      return;

    case 135:


      if (MEM_READONLY_P (x))
 res->unch_memory = 1;
      else
 res->memory = 1;
      res->volatil |= MEM_VOLATILE_P (x);


      mark_referenced_resources (XEXP (x, 0), res, 0);
      return;

    case 144:
      res->cc = 1;
      return;

    case 128:
    case 148:

      res->volatil = 1;
      return;

    case 129:
      res->volatil = 1;
      break;

    case 147:
      res->volatil |= MEM_VOLATILE_P (x);






      for (i = 0; i < ASM_OPERANDS_INPUT_LENGTH (x); i++)
 mark_referenced_resources (ASM_OPERANDS_INPUT (x, i), res, 0);
      return;

    case 146:


      mark_referenced_resources (XEXP (XEXP (x, 0), 0), res, 0);
      mark_referenced_resources (XEXP (x, 1), res, 0);
      return;

    case 132:




      mark_referenced_resources (SET_SRC (x), res, 0);

      x = SET_DEST (x);
      if (GET_CODE (x) == ZERO_EXTRACT
   || GET_CODE (x) == STRICT_LOW_PART)
 mark_referenced_resources (x, res, 0);
      else if (GET_CODE (x) == 131)
 x = SUBREG_REG (x);
      if (MEM_P (x))
 mark_referenced_resources (XEXP (x, 0), res, 0);
      return;

    case 143:
      return;

    case 145:
      if (include_delayed_effects)
 {







   rtx insn = PREV_INSN (x);
   rtx sequence = 0;
   int seq_size = 0;
   int i;


   if (NEXT_INSN (insn) != x)
     {
       sequence = PATTERN (NEXT_INSN (insn));
       seq_size = XVECLEN (sequence, 0);
       gcc_assert (GET_CODE (sequence) == SEQUENCE);
     }

   res->memory = 1;
   SET_HARD_REG_BIT (res->regs, STACK_POINTER_REGNUM);
   if (frame_pointer_needed)
     {
       SET_HARD_REG_BIT (res->regs, FRAME_POINTER_REGNUM);



     }

   for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
     if (global_regs[i])
       SET_HARD_REG_BIT (res->regs, i);
   if (find_reg_note (x, REG_SETJMP, ((void*)0)))
     SET_HARD_REG_SET (res->regs);

   {
     rtx link;

     for (link = CALL_INSN_FUNCTION_USAGE (x);
   link;
   link = XEXP (link, 1))
       if (GET_CODE (XEXP (link, 0)) == USE)
  {
    for (i = 1; i < seq_size; i++)
      {
        rtx slot_pat = PATTERN (XVECEXP (sequence, 0, i));
        if (GET_CODE (slot_pat) == 132
     && rtx_equal_p (SET_DEST (slot_pat),
       XEXP (XEXP (link, 0), 0)))
   break;
      }
    if (i >= seq_size)
      mark_referenced_resources (XEXP (XEXP (link, 0), 0),
            res, 0);
  }
   }
 }



    case 138:
    case 137:
      mark_referenced_resources (PATTERN (x), res, include_delayed_effects);
      return;

    default:
      break;
    }


  format_ptr = GET_RTX_FORMAT (code);
  for (i = 0; i < GET_RTX_LENGTH (code); i++)
    switch (*format_ptr++)
      {
      case 'e':
 mark_referenced_resources (XEXP (x, i), res, include_delayed_effects);
 break;

      case 'E':
 for (j = 0; j < XVECLEN (x, i); j++)
   mark_referenced_resources (XVECEXP (x, i, j), res,
         include_delayed_effects);
 break;
      }
}
