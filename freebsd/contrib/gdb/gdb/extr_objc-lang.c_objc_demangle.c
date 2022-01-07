
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int xfree (char*) ;
 char* xmalloc (scalar_t__) ;

char *
objc_demangle (const char *mangled, int options)
{
  char *demangled, *cp;

  if (mangled[0] == '_' &&
     (mangled[1] == 'i' || mangled[1] == 'c') &&
      mangled[2] == '_')
    {
      cp = demangled = xmalloc(strlen(mangled) + 2);

      if (mangled[1] == 'i')
 *cp++ = '-';
      else
 *cp++ = '+';

      *cp++ = '[';
      strcpy(cp, mangled+3);

      while (*cp && *cp == '_')
 cp++;

      cp = strchr(cp, '_');
      if (!cp)
 {
   xfree(demangled);
   return ((void*)0);
 }
      if (cp[1] == '_') {
 *cp++ = ' ';
 strcpy(cp, mangled + (cp - demangled) + 2);
      }
      else {
 *cp++ = '(';
 cp = strchr(cp, '_');
 if (!cp)
   {
     xfree(demangled);
     return ((void*)0);
   }
 *cp++ = ')';
 *cp++ = ' ';
 strcpy(cp, mangled + (cp - demangled));
      }

      while (*cp && *cp == '_')
 cp++;

      for (; *cp; cp++)
 if (*cp == '_')
   *cp = ':';

      *cp++ = ']';
      *cp++ = 0;
      return demangled;
    }
  else
    return ((void*)0);
}
