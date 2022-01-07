
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMGL_JAVA ;
 int DMGL_PARAMS ;
 int DMGL_RET_POSTFIX ;
 char* d_demangle (char const*,int,size_t*) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *
java_demangle_v3 (const char* mangled)
{
  size_t alc;
  char *demangled;
  int nesting;
  char *from;
  char *to;

  demangled = d_demangle (mangled, DMGL_JAVA | DMGL_PARAMS | DMGL_RET_POSTFIX,
     &alc);

  if (demangled == ((void*)0))
    return ((void*)0);

  nesting = 0;
  from = demangled;
  to = from;
  while (*from != '\0')
    {
      if (strncmp (from, "JArray<", 7) == 0)
 {
   from += 7;
   ++nesting;
 }
      else if (nesting > 0 && *from == '>')
 {
   while (to > demangled && to[-1] == ' ')
     --to;
   *to++ = '[';
   *to++ = ']';
   --nesting;
   ++from;
 }
      else
 *to++ = *from++;
    }

  *to = '\0';

  return demangled;
}
