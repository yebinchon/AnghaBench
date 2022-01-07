
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char) ;
 scalar_t__ ISSPACE (char) ;
 double atof (char*) ;

double
strtod (char *str, char **ptr)
{
  char *p;

  if (ptr == (char **)0)
    return atof (str);

  p = str;

  while (ISSPACE (*p))
    ++p;

  if (*p == '+' || *p == '-')
    ++p;


  if ((p[0] == 'i' || p[0] == 'I')
      && (p[1] == 'n' || p[1] == 'N')
      && (p[2] == 'f' || p[2] == 'F'))
    {
      if ((p[3] == 'i' || p[3] == 'I')
   && (p[4] == 'n' || p[4] == 'N')
   && (p[5] == 'i' || p[5] == 'I')
   && (p[6] == 't' || p[6] == 'T')
   && (p[7] == 'y' || p[7] == 'Y'))
 {
   *ptr = p + 8;
   return atof (str);
 }
      else
 {
   *ptr = p + 3;
   return atof (str);
 }
    }


  if ((p[0] == 'n' || p[0] == 'N')
      && (p[1] == 'a' || p[1] == 'A')
      && (p[2] == 'n' || p[2] == 'N'))
    {
      p += 3;
      if (*p == '(')
 {
   ++p;
   while (*p != '\0' && *p != ')')
     ++p;
   if (*p == ')')
     ++p;
 }
      *ptr = p;
      return atof (str);
    }


  if (ISDIGIT (*p) || *p == '.')
    {
      int got_dot = 0;
      while (ISDIGIT (*p) || (!got_dot && *p == '.'))
 {
   if (*p == '.')
     got_dot = 1;
   ++p;
 }


      if (*p == 'e' || *p == 'E')
 {
   int i;
   i = 1;
   if (p[i] == '+' || p[i] == '-')
     ++i;
   if (ISDIGIT (p[i]))
     {
       while (ISDIGIT (p[i]))
  ++i;
       *ptr = p + i;
       return atof (str);
     }
 }
      *ptr = p;
      return atof (str);
    }

  *ptr = str;
  return 0.0;
}
