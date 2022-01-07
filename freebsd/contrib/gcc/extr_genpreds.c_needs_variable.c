
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;
 int GET_MODE (int ) ;


 int ISALNUM (char const) ;




 int VOIDmode ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int ) ;
 int gcc_unreachable () ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static bool
needs_variable (rtx exp, const char *var)
{
  switch (GET_CODE (exp))
    {


    case 133:
      if (needs_variable (XEXP (exp, 2), var))
 return 1;

    case 134:
    case 132:
      if (needs_variable (XEXP (exp, 1), var))
 return 1;

    case 128:
      return needs_variable (XEXP (exp, 0), var);


    case 131:
      return !strcmp (var, "op");


    case 130:
      if (!strcmp (var, "op"))
 return 1;
      if (!strcmp (var, "mode") && GET_MODE (exp) == VOIDmode)
 return 1;
      return 0;


    case 129:
      {
 const char *p = XSTR (exp, 0);
 const char *q = strstr (p, var);
 if (!q)
   return 0;
 if (q != p && (ISALNUM (q[-1]) || q[-1] == '_'))
   return 0;
 q += strlen (var);
 if (ISALNUM (q[0] || q[0] == '_'))
   return 0;
      }
      return 1;

    default:
      gcc_unreachable ();
    }
}
