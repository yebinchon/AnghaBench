
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X_op; } ;
struct TYPE_6__ {TYPE_1__ sy_value; } ;
typedef TYPE_2__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 scalar_t__ O_constant ;

int
symbol_constant_p (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 1;
  return s->sy_value.X_op == O_constant;
}
