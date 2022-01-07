
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct language_defn {char* (* la_demangle ) (char const*,int) ;} ;


 char* stub1 (char const*,int) ;

char *
language_demangle (const struct language_defn *current_language,
    const char *mangled, int options)
{
  if (current_language != ((void*)0) && current_language->la_demangle)
    return current_language->la_demangle (mangled, options);
  return ((void*)0);
}
