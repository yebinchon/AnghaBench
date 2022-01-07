
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int RTX_CODE ;


 int GET_CODE (int ) ;
 int GET_RTX_CLASS (int ) ;
 char* GET_RTX_FORMAT (int ) ;
 int GET_RTX_LENGTH (int ) ;
 int MEM ;
 int REG ;
 int XEXP (int ,int) ;
 int rtx_unstable_p (int ) ;

__attribute__((used)) static int
stable_and_no_regs_but_for_p (rtx x, rtx src, rtx dst)
{
  RTX_CODE code = GET_CODE (x);
  switch (GET_RTX_CLASS (code))
    {
    case 128:
    case 135:
    case 133:
    case 131:
    case 132:
    case 129:
    case 134:
      {
 int i;
 const char *fmt = GET_RTX_FORMAT (code);
 for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
   if (fmt[i] == 'e'
       && ! stable_and_no_regs_but_for_p (XEXP (x, i), src, dst))
       return 0;
 return 1;
      }
    case 130:
      if (code == REG)
 return x == src || x == dst;


      if (code == MEM
   && ! stable_and_no_regs_but_for_p (XEXP (x, 0), src, dst))
 return 0;

    default:
      return ! rtx_unstable_p (x);
    }
}
