
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ X_op; int * X_op_symbol; } ;
struct TYPE_9__ {TYPE_1__ sy_value; scalar_t__ sy_resolved; } ;
typedef TYPE_2__ symbolS ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_2__*) ;
 scalar_t__ O_symbol ;
 scalar_t__ S_IS_COMMON (TYPE_2__*) ;
 int S_IS_DEFINED (TYPE_2__*) ;
 int S_IS_WEAK (TYPE_2__*) ;

int
symbol_equated_reloc_p (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    return 0;



  return (s->sy_value.X_op == O_symbol



   && ((s->sy_resolved && s->sy_value.X_op_symbol != ((void*)0))
       || ! S_IS_DEFINED (s)
       || S_IS_COMMON (s)));
}
