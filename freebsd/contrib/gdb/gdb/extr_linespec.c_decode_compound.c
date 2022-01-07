
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtabs_and_lines {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;


 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int VAR_DOMAIN ;
 scalar_t__ alloca (int) ;
 struct type* check_typedef (int ) ;
 int cplusplus_error (char*,char*,char*) ;
 int error (char*) ;
 struct symtabs_and_lines find_method (int,char***,char*,char*,struct type*,struct symbol*) ;
 char* find_template_name_end (char*) ;
 int get_gdb_completer_quote_characters () ;
 struct symbol* lookup_prefix_sym (char**,char*) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,struct symtab**) ;
 int memcpy (char*,char*,int) ;
 char* skip_quoted (char*) ;
 int * strchr (int ,char) ;
 struct symtabs_and_lines symbol_found (int,char***,char*,struct symbol*,int *,struct symtab*) ;

__attribute__((used)) static struct symtabs_and_lines
decode_compound (char **argptr, int funfirstline, char ***canonical,
   char *saved_arg, char *p)
{
  struct symtabs_and_lines values;
  char *p2;
  char *saved_arg2 = *argptr;
  char *temp_end;
  struct symbol *sym;

  struct symtab *sym_symtab;
  char *copy;
  struct symbol *sym_class;
  struct symbol **sym_arr;
  struct type *t;





  if (p[0] == ':'
      && ((*argptr == p) || (p[-1] == ' ') || (p[-1] == '\t')))
    saved_arg2 += 2;
  p2 = p;
  while (1)
    {


      p = p2 + 1;







      while (*p && (p[0] != ' ') && (p[0] != '\t') && (p[0] != '\''))
 {
   if (p[0] == '<')
     {
       temp_end = find_template_name_end (p);
       if (!temp_end)
  error ("malformed template specification in command");
       p = temp_end;
     }
   else if ((p[0] == ':') && (p[1] == ':'))
     break;
   else


     p++;
 }

      if (*p != ':')
 break;







      p2 = p;

      *argptr = saved_arg2;




    }
  sym_class = lookup_prefix_sym (argptr, p2);




  if (sym_class &&
      (t = check_typedef (SYMBOL_TYPE (sym_class)),
       (TYPE_CODE (t) == TYPE_CODE_STRUCT
 || TYPE_CODE (t) == TYPE_CODE_UNION)))
    {



      if (**argptr
   && strchr (get_gdb_completer_quote_characters (),
       **argptr) != ((void*)0))
 {
   p = skip_quoted (*argptr);
   *argptr = *argptr + 1;
 }
      else
 {

   p = *argptr;
   while (*p && *p != ' ' && *p != '\t' && *p != ',' && *p != ':')
     p++;

 }



      copy = (char *) alloca (p - *argptr + 1);
      memcpy (copy, *argptr, p - *argptr);
      copy[p - *argptr] = '\0';
      if (p != *argptr
   && copy[p - *argptr - 1]
   && strchr (get_gdb_completer_quote_characters (),
       copy[p - *argptr - 1]) != ((void*)0))
 copy[p - *argptr - 1] = '\0';




      while (*p == ' ' || *p == '\t')
 p++;
      *argptr = p;
      return find_method (funfirstline, canonical, saved_arg,
     copy, t, sym_class);

    }





  copy = (char *) alloca (p - saved_arg2 + 1);
  memcpy (copy, saved_arg2, p - saved_arg2);


  copy[p - saved_arg2] = '\000';

  *argptr = (*p == '\'') ? p + 1 : p;


  sym = lookup_symbol (copy, 0, VAR_DOMAIN, 0, &sym_symtab);
  if (sym)
    return symbol_found (funfirstline, canonical, copy, sym,
    ((void*)0), sym_symtab);



  cplusplus_error (saved_arg,
     "Can't find member of namespace, class, struct, or union named \"%s\"\n",
     copy);
}
