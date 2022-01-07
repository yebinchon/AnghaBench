
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_descriptor_rtx {scalar_t__ mark; int constant; } ;
typedef int rtx ;


 struct constant_descriptor_rtx* SYMBOL_REF_CONSTANT (int ) ;

rtx
get_pool_constant_mark (rtx addr, bool *pmarked)
{
  struct constant_descriptor_rtx *desc;

  desc = SYMBOL_REF_CONSTANT (addr);
  *pmarked = (desc->mark != 0);
  return desc->constant;
}
