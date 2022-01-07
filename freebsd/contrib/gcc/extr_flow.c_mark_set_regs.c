
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct propagate_block_info {int flags; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;





 scalar_t__ COND_EXEC_CODE (scalar_t__) ;
 scalar_t__ COND_EXEC_TEST (scalar_t__) ;
 int GET_CODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;

 int PROP_ASM_SCAN ;
 scalar_t__ REG_INC ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;

 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 int gcc_assert (int) ;
 int mark_set_1 (struct propagate_block_info*,int,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
mark_set_regs (struct propagate_block_info *pbi, rtx x, rtx insn)
{
  rtx cond = NULL_RTX;
  rtx link;
  enum rtx_code code;
  int flags = pbi->flags;

  if (insn)
    for (link = REG_NOTES (insn); link; link = XEXP (link, 1))
      {
 if (REG_NOTE_KIND (link) == REG_INC)
   mark_set_1 (pbi, 128, XEXP (link, 0),
        (GET_CODE (x) == 130
         ? COND_EXEC_TEST (x) : NULL_RTX),
        insn, flags);
      }
 retry:
  switch (code = GET_CODE (x))
    {
    case 128:
      if (GET_CODE (XEXP (x, 1)) == 132)
 flags |= PROP_ASM_SCAN;

    case 131:
      mark_set_1 (pbi, code, SET_DEST (x), cond, insn, flags);
      return;

    case 130:
      cond = COND_EXEC_TEST (x);
      x = COND_EXEC_CODE (x);
      goto retry;

    case 129:
      {
 int i;



 for (i = 0; i < XVECLEN (x, 0); i++)
   {
     rtx sub = XVECEXP (x, 0, i);
     switch (code = GET_CODE (sub))
       {
       case 130:
  gcc_assert (!cond);

  cond = COND_EXEC_TEST (sub);
  sub = COND_EXEC_CODE (sub);
  if (GET_CODE (sub) == 128)
    goto mark_set;
  if (GET_CODE (sub) == 131)
    goto mark_clob;
  break;

       case 128:
       mark_set:
  if (GET_CODE (XEXP (sub, 1)) == 132)
    flags |= PROP_ASM_SCAN;

       case 131:
       mark_clob:
  mark_set_1 (pbi, code, SET_DEST (sub), cond, insn, flags);
  break;

       case 132:
  flags |= PROP_ASM_SCAN;
  break;

       default:
  break;
       }
   }
 break;
      }

    default:
      break;
    }
}
