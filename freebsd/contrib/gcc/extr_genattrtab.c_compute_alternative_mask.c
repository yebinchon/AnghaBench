
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int AND ;
 scalar_t__ EQ_ATTR ;
 scalar_t__ EQ_ATTR_ALT ;
 scalar_t__ GET_CODE (int ) ;
 int IOR ;
 scalar_t__ NOT ;
 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 char* XSTR (int ,int) ;
 char* alternative_name ;
 int atoi (char const*) ;

__attribute__((used)) static int
compute_alternative_mask (rtx exp, enum rtx_code code)
{
  const char *string;
  if (GET_CODE (exp) == code)
    return compute_alternative_mask (XEXP (exp, 0), code)
    | compute_alternative_mask (XEXP (exp, 1), code);

  else if (code == AND && GET_CODE (exp) == NOT
    && GET_CODE (XEXP (exp, 0)) == EQ_ATTR
    && XSTR (XEXP (exp, 0), 0) == alternative_name)
    string = XSTR (XEXP (exp, 0), 1);

  else if (code == IOR && GET_CODE (exp) == EQ_ATTR
    && XSTR (exp, 0) == alternative_name)
    string = XSTR (exp, 1);

  else if (GET_CODE (exp) == EQ_ATTR_ALT)
    {
      if (code == AND && XINT (exp, 1))
 return XINT (exp, 0);

      if (code == IOR && !XINT (exp, 1))
 return XINT (exp, 0);

      return 0;
    }
  else
    return 0;

  if (string[1] == 0)
    return 1 << (string[0] - '0');
  return 1 << atoi (string);
}
