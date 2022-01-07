
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* sy_next; struct TYPE_8__* sy_previous; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int abort () ;
 int debug_verify_symchain (TYPE_1__*,TYPE_1__*) ;

void
symbol_remove (symbolS *symbolP, symbolS **rootPP, symbolS **lastPP)
{
  if (LOCAL_SYMBOL_CHECK (symbolP))
    abort ();

  if (symbolP == *rootPP)
    {
      *rootPP = symbolP->sy_next;
    }

  if (symbolP == *lastPP)
    {
      *lastPP = symbolP->sy_previous;
    }

  if (symbolP->sy_next != ((void*)0))
    {
      symbolP->sy_next->sy_previous = symbolP->sy_previous;
    }

  if (symbolP->sy_previous != ((void*)0))
    {
      symbolP->sy_previous->sy_next = symbolP->sy_next;
    }

  debug_verify_symchain (*rootPP, *lastPP);
}
