
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ada_opname_map {char const* mangled; char const* demangled; } ;


 int DEPRECATED_STREQN (char const*,char const*,int) ;
 int GROW_VECT (char*,size_t,int) ;
 struct ada_opname_map* ada_opname_table ;
 int error (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

char *
ada_mangle (const char *demangled)
{
  static char *mangling_buffer = ((void*)0);
  static size_t mangling_buffer_size = 0;
  const char *p;
  int k;

  if (demangled == ((void*)0))
    return ((void*)0);

  GROW_VECT (mangling_buffer, mangling_buffer_size,
      2 * strlen (demangled) + 10);

  k = 0;
  for (p = demangled; *p != '\0'; p += 1)
    {
      if (*p == '.')
 {
   mangling_buffer[k] = mangling_buffer[k + 1] = '_';
   k += 2;
 }
      else if (*p == '"')
 {
   const struct ada_opname_map *mapping;

   for (mapping = ada_opname_table;
        mapping->mangled != ((void*)0) &&
        !DEPRECATED_STREQN (mapping->demangled, p, strlen (mapping->demangled));
        p += 1)
     ;
   if (mapping->mangled == ((void*)0))
     error ("invalid Ada operator name: %s", p);
   strcpy (mangling_buffer + k, mapping->mangled);
   k += strlen (mapping->mangled);
   break;
 }
      else
 {
   mangling_buffer[k] = *p;
   k += 1;
 }
    }

  mangling_buffer[k] = '\0';
  return mangling_buffer;
}
