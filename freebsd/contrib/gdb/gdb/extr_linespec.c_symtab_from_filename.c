
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;


 scalar_t__ alloca (int) ;
 int error (char*,...) ;
 int error_silent (char*,char*) ;
 int have_full_symbols () ;
 int have_partial_symbols () ;
 struct symtab* lookup_symtab (char*) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static struct symtab *
symtab_from_filename (char **argptr, char *p, int is_quote_enclosed,
        int *not_found_ptr)
{
  char *p1;
  char *copy;
  struct symtab *file_symtab;

  p1 = p;
  while (p != *argptr && p[-1] == ' ')
    --p;
  if ((*p == '"') && is_quote_enclosed)
    --p;
  copy = (char *) alloca (p - *argptr + 1);
  memcpy (copy, *argptr, p - *argptr);

  if (is_quote_enclosed && copy[p - *argptr - 1] == '"')
    copy[p - *argptr - 1] = 0;
  else
    copy[p - *argptr] = 0;


  file_symtab = lookup_symtab (copy);
  if (file_symtab == 0)
    {
      if (!have_full_symbols () && !have_partial_symbols ())
 error ("No symbol table is loaded.  Use the \"file\" command.");
      if (not_found_ptr)
 {
   *not_found_ptr = 1;







   error_silent ("No source file named %s.", copy);
 }
      error ("No source file named %s.", copy);
    }


  p = p1 + 1;
  while (*p == ' ' || *p == '\t')
    p++;
  *argptr = p;

  return file_symtab;
}
