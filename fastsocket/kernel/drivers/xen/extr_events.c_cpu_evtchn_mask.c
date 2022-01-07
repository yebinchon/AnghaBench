
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* bits; } ;


 TYPE_1__* cpu_evtchn_mask_p ;

__attribute__((used)) static inline unsigned long *cpu_evtchn_mask(int cpu)
{
 return cpu_evtchn_mask_p[cpu].bits;
}
