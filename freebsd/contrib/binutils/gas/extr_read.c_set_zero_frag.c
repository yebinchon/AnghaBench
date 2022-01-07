
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {scalar_t__ fr_type; } ;


 scalar_t__ rs_dummy ;
 TYPE_1__* symbol_get_frag (int *) ;
 int symbol_set_frag (int *,int *) ;
 int zero_address_frag ;

__attribute__((used)) static void
set_zero_frag (symbolS *symbolP)
{
  if (symbol_get_frag (symbolP)->fr_type != rs_dummy)
    symbol_set_frag (symbolP, &zero_address_frag);
}
