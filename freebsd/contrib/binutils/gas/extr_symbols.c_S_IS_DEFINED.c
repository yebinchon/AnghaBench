
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {scalar_t__ lsy_section; } ;
struct TYPE_5__ {scalar_t__ section; } ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 scalar_t__ undefined_section ;

int
S_IS_DEFINED (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return ((struct local_symbol *) s)->lsy_section != undefined_section;
  return s->bsym->section != undefined_section;
}
