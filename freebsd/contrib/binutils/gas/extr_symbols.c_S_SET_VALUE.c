
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ valueT ;
struct TYPE_6__ {scalar_t__ X_unsigned; scalar_t__ X_add_number; int X_op; } ;
struct TYPE_7__ {TYPE_1__ sy_value; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {scalar_t__ lsy_value; } ;
typedef scalar_t__ offsetT ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 int O_constant ;
 int S_CLEAR_WEAKREFR (TYPE_2__*) ;

void
S_SET_VALUE (symbolS *s, valueT val)
{
  if (LOCAL_SYMBOL_CHECK (s))
    {
      ((struct local_symbol *) s)->lsy_value = val;
      return;
    }

  s->sy_value.X_op = O_constant;
  s->sy_value.X_add_number = (offsetT) val;
  s->sy_value.X_unsigned = 0;
  S_CLEAR_WEAKREFR (s);
}
