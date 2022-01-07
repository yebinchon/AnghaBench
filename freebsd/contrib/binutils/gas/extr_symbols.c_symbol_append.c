
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* sy_previous; struct TYPE_7__* sy_next; } ;
typedef TYPE_1__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int abort () ;
 int debug_verify_symchain (int ,int ) ;
 int know (int) ;
 int symbol_lastP ;
 int symbol_rootP ;

void
symbol_append (symbolS *addme, symbolS *target,
        symbolS **rootPP, symbolS **lastPP)
{
  if (LOCAL_SYMBOL_CHECK (addme))
    abort ();
  if (target != ((void*)0) && LOCAL_SYMBOL_CHECK (target))
    abort ();

  if (target == ((void*)0))
    {
      know (*rootPP == ((void*)0));
      know (*lastPP == ((void*)0));
      addme->sy_next = ((void*)0);
      addme->sy_previous = ((void*)0);
      *rootPP = addme;
      *lastPP = addme;
      return;
    }

  if (target->sy_next != ((void*)0))
    {
      target->sy_next->sy_previous = addme;
    }
  else
    {
      know (*lastPP == target);
      *lastPP = addme;
    }

  addme->sy_next = target->sy_next;
  target->sy_next = addme;
  addme->sy_previous = target;

  debug_verify_symchain (symbol_rootP, symbol_lastP);
}
