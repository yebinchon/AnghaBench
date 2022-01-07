
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 scalar_t__ CONSTANT_P (int ) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;

 int MEM_P (int ) ;



 unsigned int REGNO (int ) ;




 int SUBREG_REG (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

 int gcc_assert (scalar_t__) ;
 int** hard_regno_nregs ;
 int refers_to_regno_p (unsigned int,unsigned int,int ,int *) ;
 int reg_mentioned_p (int ,int ) ;
 unsigned int subreg_regno (int ) ;

int
reg_overlap_mentioned_p (rtx x, rtx in)
{
  unsigned int regno, endregno;




  if (CONSTANT_P (in))
    return 0;

 recurse:
  switch (GET_CODE (x))
    {
    case 130:
    case 128:
    case 131:

      x = XEXP (x, 0);
      goto recurse;

    case 129:
      regno = REGNO (SUBREG_REG (x));
      if (regno < FIRST_PSEUDO_REGISTER)
 regno = subreg_regno (x);
      goto do_reg;

    case 133:
      regno = REGNO (x);
    do_reg:
      endregno = regno + (regno < FIRST_PSEUDO_REGISTER
     ? hard_regno_nregs[regno][GET_MODE (x)] : 1);
      return refers_to_regno_p (regno, endregno, in, (rtx*) 0);

    case 136:
      {
 const char *fmt;
 int i;

 if (MEM_P (in))
   return 1;

 fmt = GET_RTX_FORMAT (GET_CODE (in));
 for (i = GET_RTX_LENGTH (GET_CODE (in)) - 1; i >= 0; i--)
   if (fmt[i] == 'e')
     {
       if (reg_overlap_mentioned_p (x, XEXP (in, i)))
  return 1;
     }
   else if (fmt[i] == 'E')
     {
       int j;
       for (j = XVECLEN (in, i) - 1; j >= 0; --j)
  if (reg_overlap_mentioned_p (x, XVECEXP (in, i, j)))
    return 1;
     }

 return 0;
      }

    case 132:
    case 134:
    case 137:
      return reg_mentioned_p (x, in);

    case 135:
      {
 int i;


 for (i = XVECLEN (x, 0) - 1; i >= 0; i--)
   if (XEXP (XVECEXP (x, 0, i), 0) != 0
       && reg_overlap_mentioned_p (XEXP (XVECEXP (x, 0, i), 0), in))
     return 1;
 return 0;
      }

    default:
      gcc_assert (CONSTANT_P (x));
      return 0;
    }
}
