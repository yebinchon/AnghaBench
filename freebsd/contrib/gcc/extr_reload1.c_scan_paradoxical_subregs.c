
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;



 size_t REGNO (int ) ;
 int REG_P (int ) ;

 int SUBREG_REG (int ) ;


 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int * reg_max_ref_width ;

__attribute__((used)) static void
scan_paradoxical_subregs (rtx x)
{
  int i;
  const char *fmt;
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 131:
    case 135:
    case 137:
    case 129:
    case 133:
    case 136:
    case 134:
    case 139:
    case 132:
    case 128:
    case 138:
      return;

    case 130:
      if (REG_P (SUBREG_REG (x))
   && (GET_MODE_SIZE (GET_MODE (x))
       > reg_max_ref_width[REGNO (SUBREG_REG (x))]))
 reg_max_ref_width[REGNO (SUBREG_REG (x))]
   = GET_MODE_SIZE (GET_MODE (x));
      return;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 scan_paradoxical_subregs (XEXP (x, i));
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = XVECLEN (x, i) - 1; j >= 0; j--)
     scan_paradoxical_subregs (XVECEXP (x, i, j));
 }
    }
}
