
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sy_value; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
typedef int expressionS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int S_CLEAR_WEAKREFR (TYPE_1__*) ;
 TYPE_1__* local_symbol_convert (struct local_symbol*) ;

void
symbol_set_value_expression (symbolS *s, const expressionS *exp)
{
  if (LOCAL_SYMBOL_CHECK (s))
    s = local_symbol_convert ((struct local_symbol *) s);
  s->sy_value = *exp;
  S_CLEAR_WEAKREFR (s);
}
