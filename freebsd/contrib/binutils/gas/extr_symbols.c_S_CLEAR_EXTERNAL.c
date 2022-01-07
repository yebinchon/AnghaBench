
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct TYPE_5__ {int flags; } ;


 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 int BSF_WEAK ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;

void
S_CLEAR_EXTERNAL (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return;
  if ((s->bsym->flags & BSF_WEAK) != 0)
    {

      return;
    }
  s->bsym->flags |= BSF_LOCAL;
  s->bsym->flags &= ~(BSF_GLOBAL | BSF_WEAK);
}
