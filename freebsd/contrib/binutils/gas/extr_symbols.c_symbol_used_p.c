
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sy_used; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;

int
symbol_used_p (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 1;
  return s->sy_used;
}
