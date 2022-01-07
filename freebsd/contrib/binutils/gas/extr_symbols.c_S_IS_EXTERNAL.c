
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
typedef int flagword ;
struct TYPE_5__ {int flags; } ;


 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 int abort () ;

int
S_IS_EXTERNAL (symbolS *s)
{
  flagword flags;

  if (LOCAL_SYMBOL_CHECK (s))
    return 0;

  flags = s->bsym->flags;


  if ((flags & BSF_LOCAL) && (flags & BSF_GLOBAL))
    abort ();

  return (flags & BSF_GLOBAL) != 0;
}
