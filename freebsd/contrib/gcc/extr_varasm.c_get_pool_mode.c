
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int mode; } ;


 TYPE_1__* SYMBOL_REF_CONSTANT (int ) ;

enum machine_mode
get_pool_mode (rtx addr)
{
  return SYMBOL_REF_CONSTANT (addr)->mode;
}
