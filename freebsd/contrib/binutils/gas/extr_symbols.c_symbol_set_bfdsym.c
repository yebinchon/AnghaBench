
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* bsym; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ asymbol ;


 int BSF_SECTION_SYM ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 TYPE_1__* local_symbol_convert (struct local_symbol*) ;

void
symbol_set_bfdsym (symbolS *s, asymbol *bsym)
{
  if (LOCAL_SYMBOL_CHECK (s))
    s = local_symbol_convert ((struct local_symbol *) s);







  if ((s->bsym->flags & BSF_SECTION_SYM) == 0)
    s->bsym = bsym;

}
