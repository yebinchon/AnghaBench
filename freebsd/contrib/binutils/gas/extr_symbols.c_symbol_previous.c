
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* sy_previous; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int abort () ;

symbolS *
symbol_previous (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    abort ();
  return s->sy_previous;
}
