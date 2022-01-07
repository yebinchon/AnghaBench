
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cxx_scope ;
struct TYPE_5__ {int * scope; struct TYPE_5__* previous; } ;
typedef TYPE_1__ cxx_binding ;


 int POP_TIMEVAR_AND_RETURN (int ,TYPE_1__*) ;
 int TV_NAME_LOOKUP ;
 int timevar_push (int ) ;

__attribute__((used)) static inline cxx_binding *
find_binding (cxx_scope *scope, cxx_binding *binding)
{
  timevar_push (TV_NAME_LOOKUP);

  for (; binding != ((void*)0); binding = binding->previous)
    if (binding->scope == scope)
      POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, binding);

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, (cxx_binding *)0);
}
