
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
 int * XSTR (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int alternative_name ;
 int strcmp_check (int *,int ) ;

__attribute__((used)) static int
attr_rtx_cost (rtx x)
{
  int cost = 0;
  enum rtx_code code;
  if (!x)
    return 0;
  code = GET_CODE (x);
  switch (code)
    {
    case 128:
      if (XSTR (x, 1)[0])
 return 10;
      else
 return 0;

    case 129:
      return 0;

    case 130:

      if (!strcmp_check (XSTR (x, 0), alternative_name))
 return 0;
      else
 return 5;
    default:
      {
 int i, j;
 const char *fmt = GET_RTX_FORMAT (code);
 for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
   {
     switch (fmt[i])
       {
       case 'V':
       case 'E':
  for (j = 0; j < XVECLEN (x, i); j++)
    cost += attr_rtx_cost (XVECEXP (x, i, j));
  break;
       case 'e':
  cost += attr_rtx_cost (XEXP (x, i));
  break;
       }
   }
      }
      break;
    }
  return cost;
}
