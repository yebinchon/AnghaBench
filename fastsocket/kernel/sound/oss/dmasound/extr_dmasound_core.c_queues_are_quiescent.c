
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ locked; } ;


 TYPE_1__ write_sq ;

__attribute__((used)) static int queues_are_quiescent(void)
{
 if (write_sq.locked)
  return 0 ;
 return 1 ;
}
