
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int (* address_cost ) (int ) ;} ;


 int memory_address_p (int,int ) ;
 int stub1 (int ) ;
 TYPE_1__ targetm ;

int
address_cost (rtx x, enum machine_mode mode)
{




  if (!memory_address_p (mode, x))
    return 1000;

  return targetm.address_cost (x);
}
