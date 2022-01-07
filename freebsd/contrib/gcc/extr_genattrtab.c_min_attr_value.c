
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 int GET_CODE (int ) ;

 int INT_MAX ;
 int XEXP (int ,int) ;
 int XSTR (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int atoi (int ) ;

__attribute__((used)) static int
min_attr_value (rtx exp, int *unknownp)
{
  int current_min;
  int i, n;

  switch (GET_CODE (exp))
    {
    case 129:
      current_min = atoi (XSTR (exp, 0));
      break;

    case 130:
      current_min = min_attr_value (XEXP (exp, 1), unknownp);
      for (i = 0; i < XVECLEN (exp, 0); i += 2)
 {
   n = min_attr_value (XVECEXP (exp, 0, i + 1), unknownp);
   if (n < current_min)
     current_min = n;
 }
      break;

    case 128:
      current_min = min_attr_value (XEXP (exp, 1), unknownp);
      n = min_attr_value (XEXP (exp, 2), unknownp);
      if (n < current_min)
 current_min = n;
      break;

    default:
      *unknownp = 1;
      current_min = INT_MAX;
      break;
    }

  return current_min;
}
