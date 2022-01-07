
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
stab_demangle_get_count (const char **pp, unsigned int *pi)
{
  if (! ISDIGIT (**pp))
    return FALSE;

  *pi = **pp - '0';
  ++*pp;
  if (ISDIGIT (**pp))
    {
      unsigned int count;
      const char *p;

      count = *pi;
      p = *pp;
      do
 {
   count *= 10;
   count += *p - '0';
   ++p;
 }
      while (ISDIGIT (*p));
      if (*p == '_')
 {
   *pp = p + 1;
   *pi = count;
 }
    }

  return TRUE;
}
