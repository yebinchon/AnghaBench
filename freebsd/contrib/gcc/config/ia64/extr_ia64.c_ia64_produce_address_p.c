
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* rtx ;
struct TYPE_3__ {int call; } ;



int
ia64_produce_address_p (rtx insn)
{
  return insn->call;
}
