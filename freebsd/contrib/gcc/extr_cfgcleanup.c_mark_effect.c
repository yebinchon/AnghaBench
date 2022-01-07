
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int regset ;


 int CLEAR_REGNO_REG_SET (int ,int) ;

 int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 int REG_P (int ) ;

 int SET_DEST (int ) ;
 int SET_REGNO_REG_SET (int ,int) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int ) ;
 int** hard_regno_nregs ;
 int pc_rtx ;
 int rtx_equal_for_cselib_p (int ,int ) ;

__attribute__((used)) static bool
mark_effect (rtx exp, regset nonequal)
{
  int regno;
  rtx dest;
  switch (GET_CODE (exp))
    {


    case 129:
      if (REG_P (XEXP (exp, 0)))
 {
   dest = XEXP (exp, 0);
   regno = REGNO (dest);
   CLEAR_REGNO_REG_SET (nonequal, regno);
   if (regno < FIRST_PSEUDO_REGISTER)
     {
       int n = hard_regno_nregs[regno][GET_MODE (dest)];
       while (--n > 0)
  CLEAR_REGNO_REG_SET (nonequal, regno + n);
     }
 }
      return 0;

    case 128:
      if (rtx_equal_for_cselib_p (SET_DEST (exp), SET_SRC (exp)))
 return 0;
      dest = SET_DEST (exp);
      if (dest == pc_rtx)
 return 0;
      if (!REG_P (dest))
 return 1;
      regno = REGNO (dest);
      SET_REGNO_REG_SET (nonequal, regno);
      if (regno < FIRST_PSEUDO_REGISTER)
 {
   int n = hard_regno_nregs[regno][GET_MODE (dest)];
   while (--n > 0)
     SET_REGNO_REG_SET (nonequal, regno + n);
 }
      return 0;

    default:
      return 0;
    }
}
