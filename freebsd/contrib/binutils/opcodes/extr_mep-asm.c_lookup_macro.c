
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ macro ;


 TYPE_1__* macros ;
 int strlen (scalar_t__) ;
 scalar_t__ strncmp (scalar_t__,char const*,int ) ;

__attribute__((used)) static macro *
lookup_macro (const char *name)
{
  macro *m;

  for (m = macros; m->name; ++m)
    if (strncmp (m->name, name, strlen(m->name)) == 0)
      return m;

  return 0;
}
