
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
typename_concat (const char *prefix, const char *suffix)
{
  if (prefix == ((void*)0) || prefix[0] == '\0')
    return xstrdup (suffix);
  else
    {
      char *retval = xmalloc (strlen (prefix) + 2 + strlen (suffix) + 1);

      strcpy (retval, prefix);
      strcat (retval, "::");
      strcat (retval, suffix);

      return retval;
    }
}
