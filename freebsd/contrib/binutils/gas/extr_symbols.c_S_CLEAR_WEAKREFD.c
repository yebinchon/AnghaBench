
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* bsym; scalar_t__ sy_weakrefd; } ;
typedef TYPE_2__ symbolS ;
struct TYPE_6__ {int flags; } ;


 int BSF_LOCAL ;
 int BSF_WEAK ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 int obj_clear_weak_hook (TYPE_2__*) ;

void
S_CLEAR_WEAKREFD (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return;
  if (s->sy_weakrefd)
    {
      s->sy_weakrefd = 0;





      if (s->bsym->flags & BSF_WEAK)
 {



   s->bsym->flags &= ~BSF_WEAK;
   s->bsym->flags |= BSF_LOCAL;
 }
    }
}
