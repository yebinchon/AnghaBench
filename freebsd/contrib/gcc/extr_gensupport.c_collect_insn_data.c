
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;




 int XEXP (int ,int) ;
 int XINT (int ,int ) ;
 int XSTR (int ,int) ;
 int * XVEC (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int gcc_unreachable () ;
 int n_alternatives (int ) ;

__attribute__((used)) static void
collect_insn_data (rtx pattern, int *palt, int *pmax)
{
  const char *fmt;
  enum rtx_code code;
  int i, j, len;

  code = GET_CODE (pattern);
  switch (code)
    {
    case 131:
      i = n_alternatives (XSTR (pattern, 2));
      *palt = (i > *palt ? i : *palt);


    case 130:
    case 128:
    case 129:
      i = XINT (pattern, 0);
      if (i > *pmax)
 *pmax = i;
      break;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  len = GET_RTX_LENGTH (code);
  for (i = 0; i < len; i++)
    {
      switch (fmt[i])
 {
 case 'e': case 'u':
   collect_insn_data (XEXP (pattern, i), palt, pmax);
   break;

 case 'V':
   if (XVEC (pattern, i) == ((void*)0))
     break;

 case 'E':
   for (j = XVECLEN (pattern, i) - 1; j >= 0; --j)
     collect_insn_data (XVECEXP (pattern, i, j), palt, pmax);
   break;

 case 'i': case 'w': case '0': case 's': case 'S': case 'T':
   break;

 default:
   gcc_unreachable ();
 }
    }
}
