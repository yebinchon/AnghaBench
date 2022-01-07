
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {int type; } ;


 TYPE_1__* aout_symbol (int ) ;
 int symbol_get_bfdsym (int *) ;

__attribute__((used)) static void
obj_aout_s_set_type (symbolS *sym, int t)
{
  aout_symbol (symbol_get_bfdsym (sym))->type = t;
}
