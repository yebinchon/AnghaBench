
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key; } ;
typedef TYPE_1__ symbol ;
struct TYPE_6__ {int mangled; } ;
typedef TYPE_2__ demangled ;


 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 char* cplus_demangle (int ,int) ;
 TYPE_2__* demangled_hash_lookup (char const*,int) ;
 TYPE_1__* symbol_pop () ;

__attribute__((used)) static void
demangle_new_symbols (void)
{
  symbol *sym;

  while ((sym = symbol_pop ()) != ((void*)0))
    {
      demangled *dem;
      const char *p = cplus_demangle (sym->key, DMGL_PARAMS | DMGL_ANSI);

      if (! p)
 continue;

      dem = demangled_hash_lookup (p, 1);
      dem->mangled = sym->key;
    }
}
