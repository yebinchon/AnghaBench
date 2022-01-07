
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;


 int STRUCT_DOMAIN ;
 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int VAR_DOMAIN ;
 scalar_t__ alloca (int) ;
 struct type* check_typedef (int ) ;
 char* coloncolon ;
 char* find_template_name_end (char*) ;
 int hp_som_som_object_present ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isalpha (char) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,struct symtab**) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

struct symbol *
parse_nested_classes_for_hpacc (char *name, int len, char **token,
    int *class_prefix, char **argptr)
{
  char *p;
  char *start, *end;
  char *prefix = ((void*)0);
  char *tmp;
  struct symbol *sym_class = ((void*)0);
  struct symbol *sym_var = ((void*)0);
  struct type *t;
  int prefix_len = 0;
  int done = 0;
  char *q;





  if (!hp_som_som_object_present)
    return (struct symbol *) ((void*)0);

  p = name;


  while (*p && (*p == ' ' || *p == '\t'))
    p++;
  if (p[0] == ':' && p[1] == ':')
    p += 2;
  while (*p && (*p == ' ' || *p == '\t'))
    p++;

  while (1)
    {


      start = p;
      if (!(isalpha (*p) || *p == '$' || *p == '_'))
 return (struct symbol *) ((void*)0);
      p++;
      while (*p && (isalnum (*p) || *p == '$' || *p == '_'))
 p++;

      if (*p == '<')
 {


   q = find_template_name_end (p);
   if (q)
     p = q;
 }

      end = p;


      while (*p && (*p == ' ' || *p == '\t'))
 p++;
      if (p[0] == ':' && p[1] == ':')
 p += 2;
      while (*p && (*p == ' ' || *p == '\t'))
 p++;


      if (!*p || !(isalpha (*p) || *p == '$' || *p == '_'))
 done = 1;

      tmp = (char *) alloca (prefix_len + end - start + 3);
      if (prefix)
 {
   memcpy (tmp, prefix, prefix_len);
   memcpy (tmp + prefix_len, coloncolon, 2);
   memcpy (tmp + prefix_len + 2, start, end - start);
   tmp[prefix_len + 2 + end - start] = '\000';
 }
      else
 {
   memcpy (tmp, start, end - start);
   tmp[end - start] = '\000';
 }

      prefix = tmp;
      prefix_len = strlen (prefix);



      if (!done)
 {

   sym_class = lookup_symbol (prefix, 0, STRUCT_DOMAIN,
         0, (struct symtab **) ((void*)0));
 }
      else
 {

   sym_var = lookup_symbol (prefix, 0, VAR_DOMAIN,
       0, (struct symtab **) ((void*)0));

   if (!sym_var)
     sym_class = lookup_symbol (prefix, 0, STRUCT_DOMAIN,
           0, (struct symtab **) ((void*)0));
 }

      if (sym_var ||
   (sym_class &&
    (t = check_typedef (SYMBOL_TYPE (sym_class)),
     (TYPE_CODE (t) == TYPE_CODE_STRUCT
      || TYPE_CODE (t) == TYPE_CODE_UNION))))
 {

   *token = (char *) xmalloc (prefix_len + 1);
   memcpy (*token, prefix, prefix_len);
   (*token)[prefix_len] = '\000';
   break;
 }


      if (done)
 return (struct symbol *) ((void*)0);
    }


  if (sym_var)
    *class_prefix = 0;
  else
    *class_prefix = 1;

  if (argptr)
    *argptr = done ? p : end;

  return sym_var ? sym_var : sym_class;
}
