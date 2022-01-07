
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int this_entity; } ;
typedef TYPE_1__ cxx_scope ;


 char* cxx_scope_descriptor (TYPE_1__*) ;
 int verbatim (char*,char const*,char const*,void*,int,...) ;

__attribute__((used)) static void
cxx_scope_debug (cxx_scope *scope, int line, const char *action)
{
  const char *desc = cxx_scope_descriptor (scope);
  if (scope->this_entity)
    verbatim ("%s %s(%E) %p %d\n", action, desc,
       scope->this_entity, (void *) scope, line);
  else
    verbatim ("%s %s %p %d\n", action, desc, (void *) scope, line);
}
