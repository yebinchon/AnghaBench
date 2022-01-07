
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sy_resolved; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int local_symbol_resolved_p (struct local_symbol*) ;

int
symbol_resolved_p (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return local_symbol_resolved_p ((struct local_symbol *) s);
  return s->sy_resolved;
}
