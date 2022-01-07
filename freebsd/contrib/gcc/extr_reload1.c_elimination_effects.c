
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {int ref_outside_mem; int offset; int can_eliminate; int to_rtx; int from_rtx; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 int CONSTANT_P (int ) ;





 int FIRST_PSEUDO_REGISTER ;




 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INTVAL (int ) ;



 size_t NUM_ELIMINABLE_REGS ;


 int const PLUS ;







 int PUSH_ROUNDING (int) ;

 size_t REGNO (int ) ;
 int REG_P (int ) ;


 int SET_DEST (int ) ;
 int SET_SRC (int ) ;




 int SUBREG_REG (int ) ;





 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

 int function_invariant_p (int ) ;
 int hard_frame_pointer_rtx ;
 struct elim_table* reg_eliminate ;
 int * reg_equiv_constant ;
 int * reg_equiv_memory_loc ;
 int * reg_renumber ;
 int stack_pointer_rtx ;

__attribute__((used)) static void
elimination_effects (rtx x, enum machine_mode mem_mode)
{
  enum rtx_code code = GET_CODE (x);
  struct elim_table *ep;
  int regno;
  int i, j;
  const char *fmt;

  switch (code)
    {
    case 160:
    case 161:
    case 159:
    case 162:
    case 133:
    case 163:
    case 148:
    case 166:
    case 168:
    case 169:
    case 170:
    case 139:
      return;

    case 140:
      regno = REGNO (x);



      if (regno < FIRST_PSEUDO_REGISTER)
 {
   for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS];
        ep++)
     if (ep->from_rtx == x && ep->can_eliminate)
       {
  if (! mem_mode)
    ep->ref_outside_mem = 1;
  return;
       }

 }
      else if (reg_renumber[regno] < 0 && reg_equiv_constant
        && reg_equiv_constant[regno]
        && ! function_invariant_p (reg_equiv_constant[regno]))
 elimination_effects (reg_equiv_constant[regno], mem_mode);
      return;

    case 142:
    case 145:
    case 143:
    case 146:
    case 144:
    case 141:
      for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
 if (ep->to_rtx == XEXP (x, 0))
   {
     int size = GET_MODE_SIZE (mem_mode);






     if (code == 143 || code == 146)
       ep->offset += size;
     else if (code == 142 || code == 145)
       ep->offset -= size;
     else if ((code == 141 || code == 144)
       && GET_CODE (XEXP (x, 1)) == PLUS
       && XEXP (x, 0) == XEXP (XEXP (x, 1), 0)
       && CONSTANT_P (XEXP (XEXP (x, 1), 1)))
       ep->offset -= INTVAL (XEXP (XEXP (x, 1), 1));
   }


      if (code == 144 || code == 141)
 break;


    case 135:
    case 151: case 150:
    case 137: case 128:
    case 132: case 154: case 153:
    case 155: case 156:
    case 131: case 130:
    case 171:
    case 136:
    case 157:
    case 164:
    case 158:
    case 147:
    case 149:
    case 167:
      elimination_effects (XEXP (x, 0), mem_mode);
      return;

    case 134:
      if (REG_P (SUBREG_REG (x))
   && (GET_MODE_SIZE (GET_MODE (x))
       <= GET_MODE_SIZE (GET_MODE (SUBREG_REG (x))))
   && reg_equiv_memory_loc != 0
   && reg_equiv_memory_loc[REGNO (SUBREG_REG (x))] != 0)
 return;

      elimination_effects (SUBREG_REG (x), mem_mode);
      return;

    case 129:



      for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
 if (ep->from_rtx == XEXP (x, 0))
   ep->can_eliminate = 0;

      elimination_effects (XEXP (x, 0), mem_mode);
      return;

    case 165:



      for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS]; ep++)
 if (ep->to_rtx == XEXP (x, 0))
   ep->can_eliminate = 0;

      elimination_effects (XEXP (x, 0), mem_mode);
      return;

    case 138:

      if (REG_P (SET_DEST (x)))
 {
   for (ep = reg_eliminate; ep < &reg_eliminate[NUM_ELIMINABLE_REGS];
        ep++)
     if (ep->to_rtx == SET_DEST (x)
  && SET_DEST (x) != hard_frame_pointer_rtx)
       {


  rtx src = SET_SRC (x);

  if (GET_CODE (src) == PLUS
      && XEXP (src, 0) == SET_DEST (x)
      && GET_CODE (XEXP (src, 1)) == 160)
    ep->offset -= INTVAL (XEXP (src, 1));
  else
    ep->can_eliminate = 0;
       }
 }

      elimination_effects (SET_DEST (x), 0);
      elimination_effects (SET_SRC (x), 0);
      return;

    case 152:


      elimination_effects (XEXP (x, 0), GET_MODE (x));
      return;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = 0; i < GET_RTX_LENGTH (code); i++, fmt++)
    {
      if (*fmt == 'e')
 elimination_effects (XEXP (x, i), mem_mode);
      else if (*fmt == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   elimination_effects (XVECEXP (x, i, j), mem_mode);
    }
}
