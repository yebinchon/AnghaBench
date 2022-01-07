
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 int GET_CODE (int ) ;

 int XEXP (int ,int) ;
 int XSTR (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int atoi (int ) ;

__attribute__((used)) static int
or_attr_value (rtx exp, int *unknownp)
{
  int current_or;
  int i;

  switch (GET_CODE (exp))
    {
    case 129:
      current_or = atoi (XSTR (exp, 0));
      break;

    case 130:
      current_or = or_attr_value (XEXP (exp, 1), unknownp);
      for (i = 0; i < XVECLEN (exp, 0); i += 2)
 current_or |= or_attr_value (XVECEXP (exp, 0, i + 1), unknownp);
      break;

    case 128:
      current_or = or_attr_value (XEXP (exp, 1), unknownp);
      current_or |= or_attr_value (XEXP (exp, 2), unknownp);
      break;

    default:
      *unknownp = 1;
      current_or = -1;
      break;
    }

  return current_or;
}
