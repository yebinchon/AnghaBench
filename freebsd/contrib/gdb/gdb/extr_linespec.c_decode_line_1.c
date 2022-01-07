
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int * sals; } ;
struct symtab {int dummy; } ;


 int VAR_DOMAIN ;
 scalar_t__ alloca (int) ;
 struct symtabs_and_lines decode_all_digits (char**,struct symtab*,int,char***,struct symtab*,char*) ;
 struct symtabs_and_lines decode_compound (char**,int,char***,char*,char*) ;
 struct symtabs_and_lines decode_dollar (char*,int,struct symtab*,char***,struct symtab*) ;
 struct symtabs_and_lines decode_indirect (char**) ;
 struct symtabs_and_lines decode_objc (char**,int,int *,char***,char*) ;
 struct symtabs_and_lines decode_variable (char*,int,char***,struct symtab*,int*) ;
 int error (char*) ;
 int get_gdb_completer_quote_characters () ;
 int initialize_defaults (struct symtab**,int*) ;
 scalar_t__ is_objc_method_format (char*) ;
 char* locate_first_half (char**,int*) ;
 scalar_t__ lookup_symbol (char*,int ,int ,int ,int *) ;
 int memcpy (char*,char*,int) ;
 int set_flags (char*,int*,char**) ;
 char* skip_quoted (char*) ;
 char* skip_quoted_chars (char*,int *,char*) ;
 int * strchr (int ,char) ;
 scalar_t__ sym ;
 int sym_symtab ;
 struct symtabs_and_lines symbol_found (int,char***,char*,scalar_t__,int *,int ) ;
 struct symtab* symtab_from_filename (char**,char*,int,int*) ;

struct symtabs_and_lines
decode_line_1 (char **argptr, int funfirstline, struct symtab *default_symtab,
        int default_line, char ***canonical, int *not_found_ptr)
{
  char *p;
  char *q;

  struct symtab *file_symtab = ((void*)0);

  char *copy;


  char *paren_pointer;


  int is_quoted;

  int is_quote_enclosed;
  int is_objc_method = 0;
  char *saved_arg = *argptr;

  if (not_found_ptr)
    *not_found_ptr = 0;



  initialize_defaults (&default_symtab, &default_line);



  if (**argptr == '*')
    return decode_indirect (argptr);






  set_flags (*argptr, &is_quoted, &paren_pointer);
  p = locate_first_half (argptr, &is_quote_enclosed);



  if (is_objc_method_format (p))
    {
      is_objc_method = 1;
      paren_pointer = ((void*)0);
    }



  {
    struct symtabs_and_lines values;
    values = decode_objc (argptr, funfirstline, ((void*)0),
     canonical, saved_arg);
    if (values.sals != ((void*)0))
      return values;
  }



  if ((p[0] == ':' || p[0] == '.') && paren_pointer == ((void*)0))
    {
      if (is_quoted)
 *argptr = *argptr + 1;
      if (p[0] == '.' || p[1] == ':')
 return decode_compound (argptr, funfirstline, canonical,
    saved_arg, p);




      file_symtab = symtab_from_filename (argptr, p, is_quote_enclosed,
             not_found_ptr);
    }
  q = *argptr;
  if (*q == '-' || *q == '+')
    q++;
  while (*q >= '0' && *q <= '9')
    q++;

  if (q != *argptr && (*q == 0 || *q == ' ' || *q == '\t' || *q == ','))

    return decode_all_digits (argptr, default_symtab, default_line,
         canonical, file_symtab, q);




  if (**argptr == '$')

    p = skip_quoted (*argptr + (((*argptr)[1] == '$') ? 2 : 1));
  else if (is_quoted)
    {
      p = skip_quoted (*argptr);
      if (p[-1] != '\'')
 error ("Unmatched single quote.");
    }
  else if (is_objc_method)
    {

      p = skip_quoted_chars (*argptr, ((void*)0), "");
    }
  else if (paren_pointer != ((void*)0))
    {
      p = paren_pointer + 1;
    }
  else
    {
      p = skip_quoted (*argptr);
    }

  copy = (char *) alloca (p - *argptr + 1);
  memcpy (copy, *argptr, p - *argptr);
  copy[p - *argptr] = '\0';
  if (p != *argptr
      && copy[0]
      && copy[0] == copy[p - *argptr - 1]
      && strchr (get_gdb_completer_quote_characters (), copy[0]) != ((void*)0))
    {
      copy[p - *argptr - 1] = '\0';
      copy++;
    }
  while (*p == ' ' || *p == '\t')
    p++;
  *argptr = p;





  if (*copy == '$')
    return decode_dollar (copy, funfirstline, default_symtab,
     canonical, file_symtab);




  return decode_variable (copy, funfirstline, canonical,
     file_symtab, not_found_ptr);
}
