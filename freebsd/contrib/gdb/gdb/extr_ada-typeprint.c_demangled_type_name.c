
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 char* ada_type_name (struct type*) ;
 int islower (char) ;
 char* name_buffer ;
 int name_buffer_len ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static char *
demangled_type_name (struct type *type)
{
  if (ada_type_name (type) == ((void*)0))
    return ((void*)0);
  else
    {
      char *raw_name = ada_type_name (type);
      char *s, *q;

      if (name_buffer == ((void*)0) || name_buffer_len <= strlen (raw_name))
 {
   name_buffer_len = 16 + 2 * strlen (raw_name);
   name_buffer = xrealloc (name_buffer, name_buffer_len);
 }
      strcpy (name_buffer, raw_name);

      s = (char *) strstr (name_buffer, "___");
      if (s != ((void*)0))
 *s = '\0';

      s = name_buffer + strlen (name_buffer) - 1;
      while (s > name_buffer && (s[0] != '_' || s[-1] != '_'))
 s -= 1;

      if (s == name_buffer)
 return name_buffer;

      if (!islower (s[1]))
 return ((void*)0);

      for (s = q = name_buffer; *s != '\0'; q += 1)
 {
   if (s[0] == '_' && s[1] == '_')
     {
       *q = '.';
       s += 2;
     }
   else
     {
       *q = *s;
       s += 1;
     }
 }
      *q = '\0';
      return name_buffer;
    }
}
