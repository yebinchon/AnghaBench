
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ disabled_builtin ;


 TYPE_1__* disabled_builtins ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bool
builtin_function_disabled_p (const char *name)
{
  disabled_builtin *p;
  for (p = disabled_builtins; p != ((void*)0); p = p->next)
    {
      if (strcmp (name, p->name) == 0)
 return 1;
    }
  return 0;
}
