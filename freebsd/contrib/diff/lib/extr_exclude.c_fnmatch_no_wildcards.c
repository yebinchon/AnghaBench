
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FNM_CASEFOLD ;
 int FNM_LEADING_DIR ;
 int strcasecmp (char const*,char const*) ;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 int strncasecmp (char const*,char const*,size_t) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
fnmatch_no_wildcards (char const *pattern, char const *f, int options)
{
  if (! (options & FNM_LEADING_DIR))
    return ((options & FNM_CASEFOLD)
     ? strcasecmp (pattern, f)
     : strcmp (pattern, f));
  else
    {
      size_t patlen = strlen (pattern);
      int r = ((options & FNM_CASEFOLD)
  ? strncasecmp (pattern, f, patlen)
  : strncmp (pattern, f, patlen));
      if (! r)
 {
   r = f[patlen];
   if (r == '/')
     r = 0;
 }
      return r;
    }
}
