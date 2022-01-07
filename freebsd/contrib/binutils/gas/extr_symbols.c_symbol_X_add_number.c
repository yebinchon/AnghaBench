
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int X_add_number; } ;
struct TYPE_6__ {TYPE_1__ sy_value; } ;
typedef TYPE_2__ symbolS ;
struct local_symbol {int lsy_value; } ;
typedef int offsetT ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;

offsetT *
symbol_X_add_number (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return (offsetT *) &((struct local_symbol *) s)->lsy_value;

  return &s->sy_value.X_add_number;
}
