
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 char* alloca (scalar_t__) ;
 struct type* basic_lookup_transparent_type (char*) ;
 int cp_find_first_component (char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static struct type *
cp_lookup_transparent_type_loop (const char *name, const char *scope,
     int length)
{
  int scope_length = length + cp_find_first_component (scope + length);
  char *full_name;



  if (scope[scope_length] == ':')
    {
      struct type *retval
 = cp_lookup_transparent_type_loop (name, scope, scope_length + 2);
      if (retval != ((void*)0))
 return retval;
    }

  full_name = alloca (scope_length + 2 + strlen (name) + 1);
  strncpy (full_name, scope, scope_length);
  strncpy (full_name + scope_length, "::", 2);
  strcpy (full_name + scope_length + 2, name);

  return basic_lookup_transparent_type (full_name);
}
