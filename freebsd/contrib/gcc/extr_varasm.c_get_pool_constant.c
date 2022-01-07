
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int constant; } ;


 TYPE_1__* SYMBOL_REF_CONSTANT (int ) ;

rtx
get_pool_constant (rtx addr)
{
  return SYMBOL_REF_CONSTANT (addr)->constant;
}
