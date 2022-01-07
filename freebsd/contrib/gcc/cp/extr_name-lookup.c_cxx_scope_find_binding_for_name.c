
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
typedef int cxx_scope ;
struct TYPE_6__ {int * previous; int * scope; } ;
typedef TYPE_1__ cxx_binding ;


 TYPE_1__* IDENTIFIER_NAMESPACE_BINDINGS (int ) ;
 TYPE_1__* find_binding (int *,TYPE_1__*) ;

__attribute__((used)) static inline cxx_binding *
cxx_scope_find_binding_for_name (cxx_scope *scope, tree name)
{
  cxx_binding *b = IDENTIFIER_NAMESPACE_BINDINGS (name);
  if (b)
    {

      if (scope == b->scope && b->previous == ((void*)0))
 return b;
      return find_binding (scope, b);
    }
  return ((void*)0);
}
