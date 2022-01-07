
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {int desc; } ;


 TYPE_1__* aout_symbol (int ) ;
 int symbol_get_bfdsym (int *) ;

__attribute__((used)) static int
obj_aout_s_get_desc (symbolS *sym)
{
  return aout_symbol (symbol_get_bfdsym (sym))->desc;
}
