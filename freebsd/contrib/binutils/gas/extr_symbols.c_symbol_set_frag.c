
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sy_frag; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
typedef int fragS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int S_CLEAR_WEAKREFR (TYPE_1__*) ;
 int local_symbol_set_frag (struct local_symbol*,int *) ;

void
symbol_set_frag (symbolS *s, fragS *f)
{
  if (LOCAL_SYMBOL_CHECK (s))
    {
      local_symbol_set_frag ((struct local_symbol *) s, f);
      return;
    }
  s->sy_frag = f;
  S_CLEAR_WEAKREFR (s);
}
