
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct block {int dummy; } ;


 int VAR_DOMAIN ;
 scalar_t__ alloca (scalar_t__) ;
 int compare_classes ;
 int find_methods (struct symtab*,char,char*,char*,char*,struct symbol**,unsigned int*,unsigned int*) ;
 int gdb_assert (int ) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int ,int ) ;
 struct symbol* lookup_symbol (char*,struct block*,int ,int ,int *) ;
 char* parse_method (char*,char*,char**,char**,char**) ;
 char* parse_selector (char*,char**) ;
 int qsort (struct symbol**,unsigned int,int,int ) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

char *find_imps (struct symtab *symtab, struct block *block,
   char *method, struct symbol **syms,
   unsigned int *nsym, unsigned int *ndebug)
{
  char type = '\0';
  char *class = ((void*)0);
  char *category = ((void*)0);
  char *selector = ((void*)0);

  unsigned int csym = 0;
  unsigned int cdebug = 0;

  unsigned int ncsym = 0;
  unsigned int ncdebug = 0;

  char *buf = ((void*)0);
  char *tmp = ((void*)0);

  gdb_assert (nsym != ((void*)0));
  gdb_assert (ndebug != ((void*)0));

  if (nsym != ((void*)0))
    *nsym = 0;
  if (ndebug != ((void*)0))
    *ndebug = 0;

  buf = (char *) alloca (strlen (method) + 1);
  strcpy (buf, method);
  tmp = parse_method (buf, &type, &class, &category, &selector);

  if (tmp == ((void*)0)) {

    struct symbol *sym = ((void*)0);
    struct minimal_symbol *msym = ((void*)0);

    strcpy (buf, method);
    tmp = parse_selector (buf, &selector);

    if (tmp == ((void*)0))
      return ((void*)0);

    sym = lookup_symbol (selector, block, VAR_DOMAIN, 0, ((void*)0));
    if (sym != ((void*)0))
      {
 if (syms)
   syms[csym] = sym;
 csym++;
 cdebug++;
      }

    if (sym == ((void*)0))
      msym = lookup_minimal_symbol (selector, 0, 0);

    if (msym != ((void*)0))
      {
 if (syms)
   syms[csym] = (struct symbol *)msym;
 csym++;
      }
  }

  if (syms != ((void*)0))
    find_methods (symtab, type, class, category, selector,
    syms + csym, &ncsym, &ncdebug);
  else
    find_methods (symtab, type, class, category, selector,
    ((void*)0), &ncsym, &ncdebug);


  if (ncsym == 0 && ncdebug == 0)
    return method;
  if (syms != ((void*)0))
    {
      while ((cdebug < csym) && (ncdebug > 0))
 {
   struct symbol *s = ((void*)0);

   unsigned int i = cdebug;

   unsigned int j = csym + ncdebug - 1;

   s = syms[j];
   syms[j] = syms[i];
   syms[i] = s;



   cdebug++;
   ncdebug--;
 }
    }

  csym += ncsym;
  cdebug += ncdebug;

  if (nsym != ((void*)0))
    *nsym = csym;
  if (ndebug != ((void*)0))
    *ndebug = cdebug;

  if (syms == ((void*)0))
    return method + (tmp - buf);

  if (csym > 1)
    {

      if (cdebug > 1)
 qsort (syms, cdebug, sizeof (struct minimal_symbol *),
        compare_classes);


      if ((csym - cdebug) > 1)
 qsort (&syms[cdebug], csym - cdebug,
        sizeof (struct minimal_symbol *), compare_classes);
    }

  syms[csym] = 0;

  return method + (tmp - buf);
}
