
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 unsigned int ANONYMOUS_NAMESPACE_LEN ;
 char* SYMBOL_CPLUS_DEMANGLED_NAME (struct symbol const*) ;
 int cp_add_using_directive (char const*,unsigned int,unsigned int) ;
 unsigned int cp_find_first_component (char const*) ;
 int cp_is_anonymous (char const*) ;
 int processing_has_namespace_info ;
 scalar_t__ strncmp (char const*,char*,unsigned int) ;

void
cp_scan_for_anonymous_namespaces (const struct symbol *symbol)
{
  if (!processing_has_namespace_info
      && SYMBOL_CPLUS_DEMANGLED_NAME (symbol) != ((void*)0))
    {
      const char *name = SYMBOL_CPLUS_DEMANGLED_NAME (symbol);
      unsigned int previous_component;
      unsigned int next_component;
      const char *len;




      if (!cp_is_anonymous (name))
 return;

      previous_component = 0;
      next_component = cp_find_first_component (name + previous_component);

      while (name[next_component] == ':')
 {
   if ((next_component - previous_component) == ANONYMOUS_NAMESPACE_LEN
       && strncmp (name + previous_component,
     "(anonymous namespace)",
     ANONYMOUS_NAMESPACE_LEN) == 0)
     {




       cp_add_using_directive (name,
          previous_component == 0
          ? 0 : previous_component - 2,
          next_component);
     }

   previous_component = next_component + 2;
   next_component = (previous_component
       + cp_find_first_component (name
             + previous_component));
 }
    }
}
