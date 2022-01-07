
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {char const* lsy_name; } ;
struct TYPE_5__ {char const* name; } ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;

void
S_SET_NAME (symbolS *s, const char *name)
{
  if (LOCAL_SYMBOL_CHECK (s))
    {
      ((struct local_symbol *) s)->lsy_name = name;
      return;
    }
  s->bsym->name = name;
}
