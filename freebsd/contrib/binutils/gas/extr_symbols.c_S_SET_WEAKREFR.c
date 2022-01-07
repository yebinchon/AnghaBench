
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int X_add_symbol; } ;
struct TYPE_7__ {int sy_weakrefr; TYPE_1__ sy_value; scalar_t__ sy_used; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {int dummy; } ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 TYPE_2__* local_symbol_convert (struct local_symbol*) ;
 int symbol_mark_used (int ) ;

void
S_SET_WEAKREFR (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    s = local_symbol_convert ((struct local_symbol *) s);
  s->sy_weakrefr = 1;






  if (s->sy_used)
    symbol_mark_used (s->sy_value.X_add_symbol);
}
