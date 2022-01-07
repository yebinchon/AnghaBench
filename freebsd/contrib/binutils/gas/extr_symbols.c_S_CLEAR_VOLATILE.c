
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sy_volatile; } ;
typedef TYPE_1__ symbolS ;


 int LOCAL_SYMBOL_CHECK (TYPE_1__*) ;

void
S_CLEAR_VOLATILE (symbolS *s)
{
  if (!LOCAL_SYMBOL_CHECK (s))
    s->sy_volatile = 0;
}
