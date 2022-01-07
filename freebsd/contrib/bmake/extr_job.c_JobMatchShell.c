
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ Shell ;


 TYPE_1__* shells ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static Shell *
JobMatchShell(const char *name)
{
    Shell *sh;

    for (sh = shells; sh->name != ((void*)0); sh++) {
 if (strcmp(name, sh->name) == 0)
  return (sh);
    }
    return ((void*)0);
}
