
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ident; } ;
struct pragma_entry {int is_deferred; int allow_expansion; TYPE_1__ u; } ;
typedef int cpp_reader ;


 struct pragma_entry* register_pragma_1 (int *,char const*,char const*,int) ;

void
cpp_register_deferred_pragma (cpp_reader *pfile, const char *space,
         const char *name, unsigned int ident,
         bool allow_expansion, bool allow_name_expansion)
{
  struct pragma_entry *entry;

  entry = register_pragma_1 (pfile, space, name, allow_name_expansion);
  if (entry)
    {
      entry->is_deferred = 1;
      entry->allow_expansion = allow_expansion;
      entry->u.ident = ident;
    }
}
