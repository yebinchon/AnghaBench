
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct TYPE_5__ {int flags; } ;


 int BSF_DEBUGGING ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;

int
S_IS_DEBUG (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 0;
  if (s->bsym->flags & BSF_DEBUGGING)
    return 1;
  return 0;
}
