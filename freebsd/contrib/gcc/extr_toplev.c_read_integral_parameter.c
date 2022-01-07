
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char const) ;
 int atoi (char const*) ;
 int error (char*,char const*) ;

int
read_integral_parameter (const char *p, const char *pname, const int defval)
{
  const char *endp = p;

  while (*endp)
    {
      if (ISDIGIT (*endp))
 endp++;
      else
 break;
    }

  if (*endp != 0)
    {
      if (pname != 0)
 error ("invalid option argument %qs", pname);
      return defval;
    }

  return atoi (p);
}
