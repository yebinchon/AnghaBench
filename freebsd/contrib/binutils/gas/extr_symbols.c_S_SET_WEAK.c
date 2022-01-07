
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {int dummy; } ;
struct TYPE_7__ {int flags; } ;


 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 int BSF_WEAK ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 TYPE_2__* local_symbol_convert (struct local_symbol*) ;
 int obj_set_weak_hook (TYPE_2__*) ;

void
S_SET_WEAK (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    s = local_symbol_convert ((struct local_symbol *) s);



  s->bsym->flags |= BSF_WEAK;
  s->bsym->flags &= ~(BSF_GLOBAL | BSF_LOCAL);
}
