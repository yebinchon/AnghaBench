
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compiler {char* suffix; char* spec; } ;


 struct compiler* compilers ;
 int error (char*,char const*) ;
 int n_compilers ;
 int strcasecmp (char const*,char const*) ;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 int strpbrk (char const*,char*) ;

__attribute__((used)) static struct compiler *
lookup_compiler (const char *name, size_t length, const char *language)
{
  struct compiler *cp;


  if (language != 0 && language[0] == '*')
    return 0;


  if (language != 0)
    {
      for (cp = compilers + n_compilers - 1; cp >= compilers; cp--)
 if (cp->suffix[0] == '@' && !strcmp (cp->suffix + 1, language))
   return cp;

      error ("language %s not recognized", language);
      return 0;
    }


  for (cp = compilers + n_compilers - 1; cp >= compilers; cp--)
    {
      if (
   (!strcmp (cp->suffix, "-") && !strcmp (name, "-"))
   || (strlen (cp->suffix) < length

       && !strcmp (cp->suffix,
     name + length - strlen (cp->suffix))
  ))
 break;
    }
  if (cp >= compilers)
    {
      if (cp->spec[0] != '@')

 return cp;




      return lookup_compiler (((void*)0), 0, cp->spec + 1);
    }
  return 0;
}
