
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sy_volatile; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__ const*) ;

int
S_IS_VOLATILE (const symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 0;
  return s->sy_volatile;
}
