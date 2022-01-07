
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISDIGIT (char const) ;
 char* default_strip_name_encoding (char const*) ;
 int gcc_assert (int) ;
 char* ggc_alloc_string (char const*,int) ;
 char* strchr (char const*,char) ;

const char *
i386_nlm_strip_name_encoding (const char *str)
{
  const char *name = default_strip_name_encoding (str);

  if (*str != '*' && (*name == '_' || *name == '@'))
    {
      const char *p = strchr (name + 1, '@');

      if (p)
 {
   ++name;
   if (ISDIGIT (p[1]))
     name = ggc_alloc_string (name, p - name);
   else
     {
       gcc_assert (ISDIGIT (*name));
       name++;
       gcc_assert (name == p);
     }
 }
    }
  return name;
}
