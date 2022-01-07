
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sy_previous; int * sy_next; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int abort () ;

void
symbol_clear_list_pointers (symbolS *symbolP)
{
  if (LOCAL_SYMBOL_CHECK (symbolP))
    abort ();
  symbolP->sy_next = ((void*)0);
  symbolP->sy_previous = ((void*)0);
}
