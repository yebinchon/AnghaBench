
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int RTX_CODE ;




 unsigned int ARG_POINTER_REGNUM ;







 unsigned int FIRST_PSEUDO_REGISTER ;
 unsigned int FRAME_POINTER_REGNUM ;
 int GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 unsigned int HARD_FRAME_POINTER_REGNUM ;

 int MEM_P (int ) ;


 unsigned int REGNO (int ) ;

 int SET_DEST (int ) ;
 int SET_HARD_REG_BIT (int ,unsigned int) ;
 int SET_SRC (int ) ;
 unsigned int STACK_POINTER_REGNUM ;
 int STRICT_LOW_PART ;
 int SUBREG ;

 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int ZERO_EXTRACT ;
 int * fixed_regs ;
 int ** hard_regno_nregs ;
 int newpat_used_regs ;

__attribute__((used)) static void
mark_used_regs_combine (rtx x)
{
  RTX_CODE code = GET_CODE (x);
  unsigned int regno;
  int i;

  switch (code)
    {
    case 132:
    case 128:
    case 134:
    case 136:
    case 135:
    case 133:
    case 131:
    case 140:
    case 141:
    case 139:





      return;

    case 137:


      if (MEM_P (XEXP (x, 0)))
 mark_used_regs_combine (XEXP (XEXP (x, 0), 0));
      return;

    case 130:
      regno = REGNO (x);


      if (regno < FIRST_PSEUDO_REGISTER)
 {
   unsigned int endregno, r;


   if (regno == STACK_POINTER_REGNUM






       || regno == FRAME_POINTER_REGNUM)
     return;

   endregno = regno + hard_regno_nregs[regno][GET_MODE (x)];
   for (r = regno; r < endregno; r++)
     SET_HARD_REG_BIT (newpat_used_regs, r);
 }
      return;

    case 129:
      {


 rtx testreg = SET_DEST (x);

 while (GET_CODE (testreg) == SUBREG
        || GET_CODE (testreg) == ZERO_EXTRACT
        || GET_CODE (testreg) == STRICT_LOW_PART)
   testreg = XEXP (testreg, 0);

 if (MEM_P (testreg))
   mark_used_regs_combine (XEXP (testreg, 0));

 mark_used_regs_combine (SET_SRC (x));
      }
      return;

    default:
      break;
    }



  {
    const char *fmt = GET_RTX_FORMAT (code);

    for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
      {
 if (fmt[i] == 'e')
   mark_used_regs_combine (XEXP (x, i));
 else if (fmt[i] == 'E')
   {
     int j;

     for (j = 0; j < XVECLEN (x, i); j++)
       mark_used_regs_combine (XVECEXP (x, i, j));
   }
      }
  }
}
