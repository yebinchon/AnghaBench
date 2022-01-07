
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {scalar_t__ lsy_section; } ;
typedef scalar_t__ segT ;
struct TYPE_6__ {int flags; scalar_t__ section; } ;


 int BSF_SECTION_SYM ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 int abort () ;
 TYPE_2__* local_symbol_convert (struct local_symbol*) ;
 scalar_t__ reg_section ;

void
S_SET_SEGMENT (symbolS *s, segT seg)
{




  if (LOCAL_SYMBOL_CHECK (s))
    {
      if (seg == reg_section)
 s = local_symbol_convert ((struct local_symbol *) s);
      else
 {
   ((struct local_symbol *) s)->lsy_section = seg;
   return;
 }
    }

  if (s->bsym->flags & BSF_SECTION_SYM)
    {
      if (s->bsym->section != seg)
 abort ();
    }
  else
    s->bsym->section = seg;
}
