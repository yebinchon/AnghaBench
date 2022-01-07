
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int ASM_OPERANDS_INPUT (int ,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (int ) ;

 int CC0 ;


 int COND_EXEC_CODE (int ) ;
 int COND_EXEC_TEST (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;

 int MEM_P (int ) ;

 int PC ;

 int REG_P (int ) ;

 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int SUBREG ;
 int SUBREG_REG (int ) ;
 int TRAP_CONDITION (int ) ;

 int UNITS_PER_WORD ;



 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int reg_overlap_mentioned_p (int ,int ) ;

int
reg_referenced_p (rtx x, rtx body)
{
  int i;

  switch (GET_CODE (body))
    {
    case 132:
      if (reg_overlap_mentioned_p (x, SET_SRC (body)))
 return 1;




      if (GET_CODE (SET_DEST (body)) != CC0
   && GET_CODE (SET_DEST (body)) != PC
   && !REG_P (SET_DEST (body))
   && ! (GET_CODE (SET_DEST (body)) == SUBREG
  && REG_P (SUBREG_REG (SET_DEST (body)))
  && (((GET_MODE_SIZE (GET_MODE (SUBREG_REG (SET_DEST (body))))
        + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)
      == ((GET_MODE_SIZE (GET_MODE (SET_DEST (body)))
    + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)))
   && reg_overlap_mentioned_p (x, SET_DEST (body)))
 return 1;
      return 0;

    case 139:
      for (i = ASM_OPERANDS_INPUT_LENGTH (body) - 1; i >= 0; i--)
 if (reg_overlap_mentioned_p (x, ASM_OPERANDS_INPUT (body, i)))
   return 1;
      return 0;

    case 138:
    case 128:
    case 135:
      return reg_overlap_mentioned_p (x, body);

    case 131:
      return reg_overlap_mentioned_p (x, TRAP_CONDITION (body));

    case 133:
      return reg_overlap_mentioned_p (x, XEXP (body, 0));

    case 130:
    case 129:
      for (i = XVECLEN (body, 0) - 1; i >= 0; i--)
 if (reg_overlap_mentioned_p (x, XVECEXP (body, 0, i)))
   return 1;
      return 0;

    case 134:
      for (i = XVECLEN (body, 0) - 1; i >= 0; i--)
 if (reg_referenced_p (x, XVECEXP (body, 0, i)))
   return 1;
      return 0;

    case 137:
      if (MEM_P (XEXP (body, 0)))
 if (reg_overlap_mentioned_p (x, XEXP (XEXP (body, 0), 0)))
   return 1;
      return 0;

    case 136:
      if (reg_overlap_mentioned_p (x, COND_EXEC_TEST (body)))
 return 1;
      return reg_referenced_p (x, COND_EXEC_CODE (body));

    default:
      return 0;
    }
}
