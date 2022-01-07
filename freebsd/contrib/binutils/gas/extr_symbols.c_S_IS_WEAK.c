
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* X_add_symbol; } ;
struct TYPE_9__ {TYPE_2__* bsym; TYPE_1__ sy_value; } ;
typedef TYPE_3__ symbolS ;
struct TYPE_8__ {int flags; } ;


 int BSF_WEAK ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_3__*) ;
 scalar_t__ S_IS_WEAKREFR (TYPE_3__*) ;

int
S_IS_WEAK (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 0;




  if (S_IS_WEAKREFR (s))
    return S_IS_WEAK (s->sy_value.X_add_symbol);
  return (s->bsym->flags & BSF_WEAK) != 0;
}
