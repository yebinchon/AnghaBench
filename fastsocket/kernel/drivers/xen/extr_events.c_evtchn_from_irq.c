
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int evtchn; } ;


 TYPE_1__* info_for_irq (unsigned int) ;

__attribute__((used)) static unsigned int evtchn_from_irq(unsigned irq)
{
 return info_for_irq(irq)->evtchn;
}
