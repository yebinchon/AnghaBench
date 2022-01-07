
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef int RTX_CODE ;



 int ATTR_IND_SIMPLIFIED_P (int *) ;


 int GET_CODE (int *) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;




 int * XEXP (int *,int) ;
 int XSTR (int *,int ) ;
 int * XVEC (int *,int) ;
 int * XVECEXP (int *,int,int) ;
 int XVECLEN (int *,int) ;
 int address_used ;
 int alternative_name ;
 int length_str ;
 int length_used ;
 int must_constrain ;
 int must_extract ;
 int strcmp_check (int ,int ) ;

__attribute__((used)) static void
walk_attr_value (rtx exp)
{
  int i, j;
  const char *fmt;
  RTX_CODE code;

  if (exp == ((void*)0))
    return;

  code = GET_CODE (exp);
  switch (code)
    {
    case 128:
      if (! ATTR_IND_SIMPLIFIED_P (exp))



 must_extract = must_constrain = 1;
      return;

    case 130:
      must_extract = 1;
      return;

    case 132:
      must_extract = must_constrain = 1;
      break;

    case 133:
      if (XSTR (exp, 0) == alternative_name)
 must_extract = must_constrain = 1;
      else if (strcmp_check (XSTR (exp, 0), length_str) == 0)
 length_used = 1;
      return;

    case 131:
      must_extract = 1;
      address_used = 1;
      return;

    case 129:
      address_used = 1;
      return;

    case 134:
      return;

    default:
      break;
    }

  for (i = 0, fmt = GET_RTX_FORMAT (code); i < GET_RTX_LENGTH (code); i++)
    switch (*fmt++)
      {
      case 'e':
      case 'u':
 walk_attr_value (XEXP (exp, i));
 break;

      case 'E':
 if (XVEC (exp, i) != ((void*)0))
   for (j = 0; j < XVECLEN (exp, i); j++)
     walk_attr_value (XVECEXP (exp, i, j));
 break;
      }
}
