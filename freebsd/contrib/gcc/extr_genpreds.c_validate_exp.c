
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;



 int GET_CODE (scalar_t__) ;
 char* GET_RTX_NAME (int) ;


 int ISDIGIT (char const) ;
 int ISLOWER (char const) ;




 scalar_t__ XEXP (scalar_t__,int) ;
 char* XSTR (scalar_t__,int) ;
 int have_error ;
 int message_with_line (int,char*,char const*,...) ;

__attribute__((used)) static bool
validate_exp (rtx exp, const char *name, int lineno)
{
  if (exp == 0)
    {
      message_with_line (lineno, "%s: must give a predicate expression", name);
      return 1;
    }

  switch (GET_CODE (exp))
    {

    case 133:
      if (validate_exp (XEXP (exp, 2), name, lineno))
 return 1;

    case 134:
    case 132:
      if (validate_exp (XEXP (exp, 1), name, lineno))
 return 1;

    case 128:
      return validate_exp (XEXP (exp, 0), name, lineno);


    case 131:
      {
 const char *p;
 for (p = XSTR (exp, 1); *p; p++)
   {
     if (!ISDIGIT (*p) && !ISLOWER (*p))
       {
  message_with_line (lineno, "%s: invalid character in path "
       "string '%s'", name, XSTR (exp, 1));
  have_error = 1;
  return 1;
       }
   }
      }



    case 130:
    case 129:
      return 0;

    default:
      message_with_line (lineno,
    "%s: cannot use '%s' in a predicate expression",
    name, GET_RTX_NAME (GET_CODE (exp)));
      have_error = 1;
      return 1;
    }
}
