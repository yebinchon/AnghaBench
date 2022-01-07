
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sy_weakrefr; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;

int
S_IS_WEAKREFR (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 0;
  return s->sy_weakrefr != 0;
}
