
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* mangled; char const* demangled; } ;


 scalar_t__ DEPRECATED_STREQ (char const*,char*) ;
 scalar_t__ DEPRECATED_STREQN (char const*,char const*,int) ;
 int GROW_VECT (char*,size_t,int) ;
 TYPE_1__* ada_opname_table ;
 scalar_t__ isalnum (char const) ;
 int isalpha (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isupper (char) ;
 int sprintf (char*,char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;

char *
ada_demangle (const char *mangled)
{
  int i, j;
  int len0;
  const char *p;
  char *demangled;
  int at_start_name;
  static char *demangling_buffer = ((void*)0);
  static size_t demangling_buffer_size = 0;

  if (DEPRECATED_STREQN (mangled, "_ada_", 5))
    mangled += 5;

  if (mangled[0] == '_' || mangled[0] == '<')
    goto Suppress;

  p = strstr (mangled, "___");
  if (p == ((void*)0))
    len0 = strlen (mangled);
  else
    {
      if (p[3] == 'X')
 len0 = p - mangled;
      else
 goto Suppress;
    }
  if (len0 > 3 && DEPRECATED_STREQ (mangled + len0 - 3, "TKB"))
    len0 -= 3;
  if (len0 > 1 && DEPRECATED_STREQ (mangled + len0 - 1, "B"))
    len0 -= 1;


  GROW_VECT (demangling_buffer, demangling_buffer_size, 2 * len0 + 1);
  demangled = demangling_buffer;

  if (isdigit (mangled[len0 - 1]))
    {
      for (i = len0 - 2; i >= 0 && isdigit (mangled[i]); i -= 1)
 ;
      if (i > 1 && mangled[i] == '_' && mangled[i - 1] == '_')
 len0 = i - 1;
      else if (mangled[i] == '$')
 len0 = i;
    }

  for (i = 0, j = 0; i < len0 && !isalpha (mangled[i]); i += 1, j += 1)
    demangled[j] = mangled[i];

  at_start_name = 1;
  while (i < len0)
    {
      if (at_start_name && mangled[i] == 'O')
 {
   int k;
   for (k = 0; ada_opname_table[k].mangled != ((void*)0); k += 1)
     {
       int op_len = strlen (ada_opname_table[k].mangled);
       if (DEPRECATED_STREQN
    (ada_opname_table[k].mangled + 1, mangled + i + 1,
     op_len - 1) && !isalnum (mangled[i + op_len]))
  {
    strcpy (demangled + j, ada_opname_table[k].demangled);
    at_start_name = 0;
    i += op_len;
    j += strlen (ada_opname_table[k].demangled);
    break;
  }
     }
   if (ada_opname_table[k].mangled != ((void*)0))
     continue;
 }
      at_start_name = 0;

      if (i < len0 - 4 && DEPRECATED_STREQN (mangled + i, "TK__", 4))
 i += 2;
      if (mangled[i] == 'X' && i != 0 && isalnum (mangled[i - 1]))
 {
   do
     i += 1;
   while (i < len0 && (mangled[i] == 'b' || mangled[i] == 'n'));
   if (i < len0)
     goto Suppress;
 }
      else if (i < len0 - 2 && mangled[i] == '_' && mangled[i + 1] == '_')
 {
   demangled[j] = '.';
   at_start_name = 1;
   i += 2;
   j += 1;
 }
      else
 {
   demangled[j] = mangled[i];
   i += 1;
   j += 1;
 }
    }
  demangled[j] = '\000';

  for (i = 0; demangled[i] != '\0'; i += 1)
    if (isupper (demangled[i]) || demangled[i] == ' ')
      goto Suppress;

  return demangled;

Suppress:
  GROW_VECT (demangling_buffer, demangling_buffer_size, strlen (mangled) + 3);
  demangled = demangling_buffer;
  if (mangled[0] == '<')
    strcpy (demangled, mangled);
  else
    sprintf (demangled, "<%s>", mangled);
  return demangled;

}
