
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOUPPER (char) ;
 int notes ;
 char* obstack_finish (int *) ;
 int obstack_grow (int *,char const*,unsigned int) ;
 int strlen (char const*) ;
 int symbols_case_sensitive ;
 char* tc_canonicalize_symbol_name (char*) ;

__attribute__((used)) static char *
save_symbol_name (const char *name)
{
  unsigned int name_length;
  char *ret;

  name_length = strlen (name) + 1;
  obstack_grow (&notes, name, name_length);
  ret = obstack_finish (&notes);





  if (! symbols_case_sensitive)
    {
      char *s;

      for (s = ret; *s != '\0'; s++)
 *s = TOUPPER (*s);
    }

  return ret;
}
