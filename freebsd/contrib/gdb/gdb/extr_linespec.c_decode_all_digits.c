
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int line; scalar_t__ pc; struct symtab* symtab; } ;
struct symtab {int dummy; } ;


 int atoi (char*) ;
 int build_canonical_line_spec (struct symtab_and_line*,int *,char***) ;
 struct symtab* find_line_symtab (struct symtab*,int,int *,int *) ;
 int init_sal (struct symtab_and_line*) ;
 int initialize_defaults (struct symtab**,int*) ;
 int set_default_source_symtab_and_line () ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct symtabs_and_lines
decode_all_digits (char **argptr, struct symtab *default_symtab,
     int default_line, char ***canonical,
     struct symtab *file_symtab, char *q)

{
  struct symtabs_and_lines values;
  struct symtab_and_line val;

  enum sign
    {
      none, plus, minus
    }
  sign = none;


  int need_canonical = (file_symtab == 0) ? 1 : 0;

  init_sal (&val);







  if (file_symtab == 0 && default_symtab == 0)
    {

      set_default_source_symtab_and_line ();
      initialize_defaults (&default_symtab, &default_line);
    }

  if (**argptr == '+')
    sign = plus, (*argptr)++;
  else if (**argptr == '-')
    sign = minus, (*argptr)++;
  val.line = atoi (*argptr);
  switch (sign)
    {
    case plus:
      if (q == *argptr)
 val.line = 5;
      if (file_symtab == 0)
 val.line = default_line + val.line;
      break;
    case minus:
      if (q == *argptr)
 val.line = 15;
      if (file_symtab == 0)
 val.line = default_line - val.line;
      else
 val.line = 1;
      break;
    case none:
      break;
    }

  while (*q == ' ' || *q == '\t')
    q++;
  *argptr = q;
  if (file_symtab == 0)
    file_symtab = default_symtab;




  val.symtab = find_line_symtab (file_symtab, val.line, ((void*)0), ((void*)0));
  if (val.symtab == 0)
    val.symtab = file_symtab;

  val.pc = 0;
  values.sals = (struct symtab_and_line *)
    xmalloc (sizeof (struct symtab_and_line));
  values.sals[0] = val;
  values.nelts = 1;
  if (need_canonical)
    build_canonical_line_spec (values.sals, ((void*)0), canonical);
  return values;
}
