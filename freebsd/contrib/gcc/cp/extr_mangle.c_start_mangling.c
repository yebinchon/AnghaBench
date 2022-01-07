
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int need_abi_warning; int entity; } ;
struct TYPE_3__ {int stack; } ;


 TYPE_2__ G ;
 TYPE_1__* ident_hash ;
 int * mangle_obstack ;
 int name_base ;
 int name_obstack ;
 int obstack_alloc (int *,int ) ;
 int obstack_free (int *,int ) ;

__attribute__((used)) static inline void
start_mangling (const tree entity, const bool ident_p)
{
  G.entity = entity;
  G.need_abi_warning = 0;
  if (!ident_p)
    {
      obstack_free (&name_obstack, name_base);
      mangle_obstack = &name_obstack;
      name_base = obstack_alloc (&name_obstack, 0);
    }
  else
    mangle_obstack = &ident_hash->stack;
}
