
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* previous; int * scope; } ;
typedef TYPE_1__ cxx_binding ;


 TYPE_1__* free_bindings ;

__attribute__((used)) static inline void
cxx_binding_free (cxx_binding *binding)
{
  binding->scope = ((void*)0);
  binding->previous = free_bindings;
  free_bindings = binding;
}
