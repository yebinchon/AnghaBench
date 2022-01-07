
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sy_next; int * bsym; } ;
typedef TYPE_2__ symbolS ;
struct TYPE_7__ {TYPE_2__* sy_previous; } ;


 int assert (int) ;
 TYPE_2__* symbol_next (TYPE_2__*) ;

void
verify_symbol_chain (symbolS *rootP, symbolS *lastP)
{
  symbolS *symbolP = rootP;

  if (symbolP == ((void*)0))
    return;

  for (; symbol_next (symbolP) != ((void*)0); symbolP = symbol_next (symbolP))
    {
      assert (symbolP->bsym != ((void*)0));
      assert (symbolP->sy_next->sy_previous == symbolP);
    }

  assert (lastP == symbolP);
}
